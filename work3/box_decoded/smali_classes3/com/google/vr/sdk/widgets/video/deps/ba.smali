.class public final Lcom/google/vr/sdk/widgets/video/deps/ba;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/av;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/ba$e;,
        Lcom/google/vr/sdk/widgets/video/deps/ba$d;,
        Lcom/google/vr/sdk/widgets/video/deps/ba$b;,
        Lcom/google/vr/sdk/widgets/video/deps/ba$a;,
        Lcom/google/vr/sdk/widgets/video/deps/ba$c;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:Z


# instance fields
.field private A:Lcom/google/vr/sdk/widgets/video/deps/u;

.field private B:J

.field private C:J

.field private D:Ljava/nio/ByteBuffer;

.field private E:I

.field private F:I

.field private G:J

.field private H:J

.field private I:I

.field private J:J

.field private K:J

.field private L:I

.field private M:I

.field private N:J

.field private O:F

.field private P:[Lcom/google/vr/sdk/widgets/video/deps/an;

.field private Q:[Ljava/nio/ByteBuffer;

.field private R:Ljava/nio/ByteBuffer;

.field private S:Ljava/nio/ByteBuffer;

.field private T:[B

.field private U:I

.field private V:I

.field private W:Z

.field private X:Z

.field private Y:I

.field private Z:Lcom/google/vr/sdk/widgets/video/deps/ay;

.field private aa:Z

.field private ab:J

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/ak;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/ba$a;

.field private final e:Z

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/az;

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/bi;

.field private final h:[Lcom/google/vr/sdk/widgets/video/deps/an;

.field private final i:[Lcom/google/vr/sdk/widgets/video/deps/an;

.field private final j:Landroid/os/ConditionVariable;

.field private final k:Lcom/google/vr/sdk/widgets/video/deps/ax;

.field private final l:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/vr/sdk/widgets/video/deps/ba$d;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/google/vr/sdk/widgets/video/deps/av$c;

.field private n:Landroid/media/AudioTrack;

.field private o:Landroid/media/AudioTrack;

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Lcom/google/vr/sdk/widgets/video/deps/aj;

.field private w:Z

.field private x:Z

.field private y:I

.field private z:Lcom/google/vr/sdk/widgets/video/deps/u;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ak;Lcom/google/vr/sdk/widgets/video/deps/ba$a;Z)V
    .locals 5

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->c:Lcom/google/vr/sdk/widgets/video/deps/ak;

    .line 7
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ba$a;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->d:Lcom/google/vr/sdk/widgets/video/deps/ba$a;

    .line 8
    iput-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->e:Z

    .line 9
    new-instance p1, Landroid/os/ConditionVariable;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->j:Landroid/os/ConditionVariable;

    .line 10
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ax;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ba$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ba$e;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ba;Lcom/google/vr/sdk/widgets/video/deps/ba$1;)V

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ax;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ax$a;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->k:Lcom/google/vr/sdk/widgets/video/deps/ax;

    .line 11
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/az;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/az;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->f:Lcom/google/vr/sdk/widgets/video/deps/az;

    .line 12
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bi;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/bi;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->g:Lcom/google/vr/sdk/widgets/video/deps/bi;

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/google/vr/sdk/widgets/video/deps/an;

    .line 14
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/be;

    invoke-direct {v3}, Lcom/google/vr/sdk/widgets/video/deps/be;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    aput-object p1, v2, p3

    const/4 p1, 0x2

    aput-object v0, v2, p1

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 15
    invoke-interface {p2}, Lcom/google/vr/sdk/widgets/video/deps/ba$a;->a()[Lcom/google/vr/sdk/widgets/video/deps/an;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/an;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/vr/sdk/widgets/video/deps/an;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->h:[Lcom/google/vr/sdk/widgets/video/deps/an;

    new-array p1, p3, [Lcom/google/vr/sdk/widgets/video/deps/an;

    .line 18
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/bc;

    invoke-direct {p2}, Lcom/google/vr/sdk/widgets/video/deps/bc;-><init>()V

    aput-object p2, p1, v4

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->i:[Lcom/google/vr/sdk/widgets/video/deps/an;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 19
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->O:F

    .line 20
    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->M:I

    .line 21
    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/aj;->a:Lcom/google/vr/sdk/widgets/video/deps/aj;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->v:Lcom/google/vr/sdk/widgets/video/deps/aj;

    .line 22
    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->Y:I

    .line 23
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ay;

    const/4 p2, 0x0

    invoke-direct {p1, v4, p2}, Lcom/google/vr/sdk/widgets/video/deps/ay;-><init>(IF)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->Z:Lcom/google/vr/sdk/widgets/video/deps/ay;

    .line 24
    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/u;->a:Lcom/google/vr/sdk/widgets/video/deps/u;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->A:Lcom/google/vr/sdk/widgets/video/deps/u;

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->V:I

    new-array p1, v4, [Lcom/google/vr/sdk/widgets/video/deps/an;

    .line 26
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->P:[Lcom/google/vr/sdk/widgets/video/deps/an;

    new-array p1, v4, [Ljava/nio/ByteBuffer;

    .line 27
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->Q:[Ljava/nio/ByteBuffer;

    .line 28
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->l:Ljava/util/ArrayDeque;

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ak;[Lcom/google/vr/sdk/widgets/video/deps/an;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/ba;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ak;[Lcom/google/vr/sdk/widgets/video/deps/an;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ak;[Lcom/google/vr/sdk/widgets/video/deps/an;Z)V
    .locals 1

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ba$b;

    invoke-direct {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/ba$b;-><init>([Lcom/google/vr/sdk/widgets/video/deps/an;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/google/vr/sdk/widgets/video/deps/ba;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ak;Lcom/google/vr/sdk/widgets/video/deps/ba$a;Z)V

    return-void
.end method

.method private static a(ILjava/nio/ByteBuffer;)I
    .locals 2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_5

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    .line 473
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/ai;->a()I

    move-result p0

    return p0

    :cond_1
    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    .line 475
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ai;->a(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :cond_2
    const/16 v0, 0xe

    if-ne p0, v0, :cond_4

    .line 477
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ai;->b(Ljava/nio/ByteBuffer;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    .line 480
    :cond_3
    invoke-static {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/ai;->a(Ljava/nio/ByteBuffer;I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x10

    :goto_0
    return p0

    .line 482
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const/16 v0, 0x26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected audio encoding: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 471
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/bb;->a(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method private static a(IZ)I
    .locals 2

    .line 455
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_2

    if-nez p1, :cond_2

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x6

    .line 460
    :cond_2
    :goto_0
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v1, 0x1a

    if-gt v0, v1, :cond_3

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->b:Ljava/lang/String;

    const-string v1, "fugu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    const/4 p1, 0x1

    if-ne p0, p1, :cond_3

    const/4 p0, 0x2

    .line 462
    :cond_3
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->e(I)I

    move-result p0

    return p0
.end method

.method private static a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1

    const/4 v0, 0x1

    .line 483
    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method private a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .locals 5

    .line 484
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->D:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/16 v0, 0x10

    .line 485
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->D:Ljava/nio/ByteBuffer;

    .line 486
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 487
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->D:Ljava/nio/ByteBuffer;

    const v1, 0x55550001

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 488
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->E:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->D:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 490
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->D:Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    const-wide/16 v3, 0x3e8

    mul-long p4, p4, v3

    invoke-virtual {v0, v2, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 491
    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->D:Ljava/nio/ByteBuffer;

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 492
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->E:I

    .line 493
    :cond_1
    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->D:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p4

    if-lez p4, :cond_3

    .line 495
    iget-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->D:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {p1, p5, p4, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p5

    if-gez p5, :cond_2

    .line 497
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->E:I

    return p5

    :cond_2
    if-ge p5, p4, :cond_3

    return v1

    .line 501
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ba;->a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result p1

    if-gez p1, :cond_4

    .line 503
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->E:I

    return p1

    .line 505
    :cond_4
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->E:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->E:I

    return p1
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/ba;)Landroid/os/ConditionVariable;
    .locals 0

    .line 511
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->j:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private a(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/av$d;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->P:[Lcom/google/vr/sdk/widgets/video/deps/an;

    array-length v0, v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_5

    if-lez v1, :cond_0

    .line 205
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->Q:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_1

    .line 206
    :cond_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->R:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/an;->a:Ljava/nio/ByteBuffer;

    :goto_1
    if-ne v1, v0, :cond_2

    .line 208
    invoke-direct {p0, v2, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ba;->b(Ljava/nio/ByteBuffer;J)V

    goto :goto_2

    .line 209
    :cond_2
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->P:[Lcom/google/vr/sdk/widgets/video/deps/an;

    aget-object v3, v3, v1

    .line 210
    invoke-interface {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/an;->a(Ljava/nio/ByteBuffer;)V

    .line 211
    invoke-interface {v3}, Lcom/google/vr/sdk/widgets/video/deps/an;->f()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 212
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->Q:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    .line 213
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
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

.method private static a(Landroid/media/AudioTrack;F)V
    .locals 0

    .line 507
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void
.end method

.method private b(J)J
    .locals 5

    const/4 v0, 0x0

    .line 395
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->l:Ljava/util/ArrayDeque;

    .line 396
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/ba$d;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/ba$d;->b(Lcom/google/vr/sdk/widgets/video/deps/ba$d;)J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    .line 397
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ba$d;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 399
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ba$d;->a(Lcom/google/vr/sdk/widgets/video/deps/ba$d;)Lcom/google/vr/sdk/widgets/video/deps/u;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->A:Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 400
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ba$d;->b(Lcom/google/vr/sdk/widgets/video/deps/ba$d;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->C:J

    .line 401
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ba$d;->c(Lcom/google/vr/sdk/widgets/video/deps/ba$d;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->N:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->B:J

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->A:Lcom/google/vr/sdk/widgets/video/deps/u;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/u;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 403
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->B:J

    add-long/2addr p1, v0

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->C:J

    sub-long/2addr p1, v0

    return-wide p1

    .line 404
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 405
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->B:J

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->d:Lcom/google/vr/sdk/widgets/video/deps/ba$a;

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->C:J

    sub-long/2addr p1, v3

    .line 406
    invoke-interface {v2, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ba$a;->a(J)J

    move-result-wide p1

    :goto_1
    add-long/2addr v0, p1

    return-wide v0

    .line 408
    :cond_3
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->B:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->C:J

    sub-long/2addr p1, v2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->A:Lcom/google/vr/sdk/widgets/video/deps/u;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/u;->b:F

    .line 409
    invoke-static {p1, p2, v2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(JF)J

    move-result-wide p1

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/ba;)J
    .locals 2

    .line 512
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method private static b(Landroid/media/AudioTrack;F)V
    .locals 0

    .line 509
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void
.end method

.method private b(Ljava/nio/ByteBuffer;J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/av$d;
        }
    .end annotation

    .line 221
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->S:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 224
    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Z)V

    goto :goto_1

    .line 225
    :cond_2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->S:Ljava/nio/ByteBuffer;

    .line 226
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    if-ge v0, v2, :cond_5

    .line 227
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 228
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->T:[B

    if-eqz v4, :cond_3

    array-length v4, v4

    if-ge v4, v0, :cond_4

    .line 229
    :cond_3
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->T:[B

    .line 230
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 231
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->T:[B

    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 232
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 233
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->U:I

    .line 234
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 236
    sget v4, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    if-ge v4, v2, :cond_6

    .line 237
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->k:Lcom/google/vr/sdk/widgets/video/deps/ax;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->J:J

    invoke-virtual {p2, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ax;->b(J)I

    move-result p2

    if-lez p2, :cond_9

    .line 239
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 240
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->o:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->T:[B

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->U:I

    invoke-virtual {p3, v1, v2, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result v3

    if-lez v3, :cond_9

    .line 242
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->U:I

    add-int/2addr p2, v3

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->U:I

    .line 243
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3

    .line 244
    :cond_6
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->aa:Z

    if-eqz v2, :cond_8

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v4

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    .line 245
    :goto_2
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 246
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->o:Landroid/media/AudioTrack;

    move-object v6, p0

    move-object v8, p1

    move v9, v0

    move-wide v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/ba;->a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    move-result v3

    goto :goto_3

    .line 247
    :cond_8
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->o:Landroid/media/AudioTrack;

    invoke-static {p2, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 248
    :cond_9
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->ab:J

    if-ltz v3, :cond_d

    .line 251
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->p:Z

    if-eqz p1, :cond_a

    .line 252
    iget-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->J:J

    int-to-long v1, v3

    add-long/2addr p2, v1

    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->J:J

    :cond_a
    if-ne v3, v0, :cond_c

    if-nez p1, :cond_b

    .line 255
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->K:J

    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->L:I

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->K:J

    :cond_b
    const/4 p1, 0x0

    .line 256
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->S:Ljava/nio/ByteBuffer;

    :cond_c
    return-void

    .line 250
    :cond_d
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/av$d;

    invoke-direct {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/av$d;-><init>(I)V

    throw p1
.end method

.method private c(J)J
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->d:Lcom/google/vr/sdk/widgets/video/deps/ba$a;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/ba$a;->b()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ba;->e(J)J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method static synthetic c(Lcom/google/vr/sdk/widgets/video/deps/ba;)J
    .locals 2

    .line 513
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method private c(I)Landroid/media/AudioTrack;
    .locals 9

    .line 450
    new-instance v8, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0xfa0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, v8

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    return-object v8
.end method

.method private static d(I)I
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-ne p0, v0, :cond_0

    const p0, 0x2ebae4

    return p0

    .line 469
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const p0, 0x225510

    return p0

    :cond_2
    const p0, 0x2ee00

    return p0

    :cond_3
    const p0, 0xbb800

    return p0

    :cond_4
    const p0, 0x13880

    return p0
.end method

.method private d(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 413
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->r:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method static synthetic d(Lcom/google/vr/sdk/widgets/video/deps/ba;)Lcom/google/vr/sdk/widgets/video/deps/av$c;
    .locals 0

    .line 514
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->m:Lcom/google/vr/sdk/widgets/video/deps/av$c;

    return-object p0
.end method

.method private e(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 414
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->s:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method static synthetic e(Lcom/google/vr/sdk/widgets/video/deps/ba;)J
    .locals 2

    .line 515
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->ab:J

    return-wide v0
.end method

.method private f(J)J
    .locals 2

    .line 415
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->s:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private k()I
    .locals 8

    .line 86
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->p:Z

    const-wide/32 v1, 0x3d090

    if-eqz v0, :cond_1

    .line 87
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->s:I

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->t:I

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->u:I

    .line 88
    invoke-static {v0, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    const/4 v3, -0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 89
    :goto_0
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    mul-int/lit8 v3, v0, 0x4

    .line 91
    invoke-direct {p0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ba;->f(J)J

    move-result-wide v1

    long-to-int v2, v1

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->I:I

    mul-int v2, v2, v1

    int-to-long v0, v0

    const-wide/32 v4, 0xb71b0

    .line 93
    invoke-direct {p0, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/ba;->f(J)J

    move-result-wide v4

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->I:I

    int-to-long v6, v6

    mul-long v4, v4, v6

    .line 94
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 95
    invoke-static {v3, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(III)I

    move-result v0

    return v0

    .line 96
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->u:I

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->d(I)I

    move-result v0

    int-to-long v3, v0

    mul-long v3, v3, v1

    const-wide/32 v0, 0xf4240

    .line 97
    div-long/2addr v3, v0

    long-to-int v0, v3

    return v0
.end method

.method private l()V
    .locals 6

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->w()[Lcom/google/vr/sdk/widgets/video/deps/an;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 100
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/an;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    :cond_0
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/an;->h()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 105
    new-array v2, v1, [Lcom/google/vr/sdk/widgets/video/deps/an;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/vr/sdk/widgets/video/deps/an;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->P:[Lcom/google/vr/sdk/widgets/video/deps/an;

    .line 106
    new-array v0, v1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->Q:[Ljava/nio/ByteBuffer;

    .line 107
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->m()V

    return-void
.end method

.method private m()V
    .locals 3

    const/4 v0, 0x0

    .line 109
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->P:[Lcom/google/vr/sdk/widgets/video/deps/an;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 110
    aget-object v1, v1, v0

    .line 111
    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/an;->h()V

    .line 112
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->Q:[Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/an;->f()Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private n()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/av$b;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->j:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 116
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->u()Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->o:Landroid/media/AudioTrack;

    .line 117
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    .line 118
    sget-boolean v1, Lcom/google/vr/sdk/widgets/video/deps/ba;->a:Z

    if-eqz v1, :cond_1

    .line 119
    sget v1, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    .line 120
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->n:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->q()V

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->n:Landroid/media/AudioTrack;

    if-nez v1, :cond_1

    .line 124
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->c(I)Landroid/media/AudioTrack;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->n:Landroid/media/AudioTrack;

    .line 125
    :cond_1
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->Y:I

    if-eq v1, v0, :cond_2

    .line 126
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->Y:I

    .line 127
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->m:Lcom/google/vr/sdk/widgets/video/deps/av$c;

    if-eqz v1, :cond_2

    .line 128
    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/av$c;->a(I)V

    .line 130
    :cond_2
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->x:Z

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->d:Lcom/google/vr/sdk/widgets/video/deps/ba$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->A:Lcom/google/vr/sdk/widgets/video/deps/u;

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ba$a;->a(Lcom/google/vr/sdk/widgets/video/deps/u;)Lcom/google/vr/sdk/widgets/video/deps/u;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_3
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/u;->a:Lcom/google/vr/sdk/widgets/video/deps/u;

    :goto_0
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->A:Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 133
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->l()V

    .line 134
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->k:Lcom/google/vr/sdk/widgets/video/deps/ax;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->o:Landroid/media/AudioTrack;

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->u:I

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->I:I

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->y:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/ax;->a(Landroid/media/AudioTrack;III)V

    .line 135
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->p()V

    .line 136
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->Z:Lcom/google/vr/sdk/widgets/video/deps/ay;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ay;->a:I

    if-eqz v0, :cond_4

    .line 137
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->o:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->Z:Lcom/google/vr/sdk/widgets/video/deps/ay;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ay;->a:I

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    .line 138
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->o:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->Z:Lcom/google/vr/sdk/widgets/video/deps/ay;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ay;->b:F

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    :cond_4
    return-void
.end method

.method private o()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/av$d;
        }
    .end annotation

    .line 267
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->V:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 268
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->w:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->P:[Lcom/google/vr/sdk/widgets/video/deps/an;

    array-length v0, v0

    :goto_0
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->V:I

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 270
    :goto_2
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->V:I

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->P:[Lcom/google/vr/sdk/widgets/video/deps/an;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_4

    .line 271
    aget-object v4, v5, v4

    if-eqz v0, :cond_2

    .line 273
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/an;->e()V

    .line 274
    :cond_2
    invoke-direct {p0, v7, v8}, Lcom/google/vr/sdk/widgets/video/deps/ba;->a(J)V

    .line 275
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/an;->g()Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    .line 278
    :cond_3
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->V:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->V:I

    goto :goto_1

    .line 280
    :cond_4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->S:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    .line 281
    invoke-direct {p0, v0, v7, v8}, Lcom/google/vr/sdk/widgets/video/deps/ba;->b(Ljava/nio/ByteBuffer;J)V

    .line 282
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->S:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    return v3

    .line 284
    :cond_5
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->V:I

    return v2
.end method

.method private p()V
    .locals 2

    .line 336
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->r()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 338
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->o:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->O:F

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ba;->a(Landroid/media/AudioTrack;F)V

    goto :goto_0

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->o:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->O:F

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ba;->b(Landroid/media/AudioTrack;F)V

    :goto_0
    return-void
.end method

.method private q()V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->n:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 390
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->n:Landroid/media/AudioTrack;

    .line 391
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/ba$2;

    invoke-direct {v1, p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ba$2;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ba;Landroid/media/AudioTrack;)V

    .line 392
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/ba$2;->start()V

    return-void
.end method

.method private r()Z
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->o:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private s()J
    .locals 4

    .line 416
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->p:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->G:J

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->F:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->H:J

    :goto_0
    return-wide v0
.end method

.method private t()J
    .locals 4

    .line 417
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->p:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->J:J

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->I:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->K:J

    :goto_0
    return-wide v0
.end method

.method private u()Landroid/media/AudioTrack;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/av$b;
        }
    .end annotation

    .line 418
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 419
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->v()Landroid/media/AudioTrack;

    move-result-object v0

    goto :goto_0

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->v:Lcom/google/vr/sdk/widgets/video/deps/aj;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/aj;->d:I

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->h(I)I

    move-result v2

    .line 421
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->Y:I

    if-nez v0, :cond_1

    .line 422
    new-instance v0, Landroid/media/AudioTrack;

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->s:I

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->t:I

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->u:I

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->y:I

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    goto :goto_0

    .line 423
    :cond_1
    new-instance v0, Landroid/media/AudioTrack;

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->s:I

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->t:I

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->u:I

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->y:I

    const/4 v7, 0x1

    iget v8, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->Y:I

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 424
    :goto_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    return-object v0

    .line 426
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :catch_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/av$b;

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->s:I

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->t:I

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->y:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/av$b;-><init>(IIII)V

    throw v0
.end method

.method private v()Landroid/media/AudioTrack;
    .locals 7

    .line 431
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->aa:Z

    if-eqz v0, :cond_0

    .line 432
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x3

    .line 433
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 434
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 435
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    goto :goto_0

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->v:Lcom/google/vr/sdk/widgets/video/deps/aj;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/aj;->a()Landroid/media/AudioAttributes;

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 438
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->t:I

    .line 439
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->u:I

    .line 440
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->s:I

    .line 441
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 442
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    .line 443
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->Y:I

    if-eqz v0, :cond_1

    move v6, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 445
    :goto_1
    new-instance v0, Landroid/media/AudioTrack;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->y:I

    const/4 v5, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    return-object v0
.end method

.method private w()[Lcom/google/vr/sdk/widgets/video/deps/an;
    .locals 1

    .line 451
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->q:Z

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->i:[Lcom/google/vr/sdk/widgets/video/deps/an;

    goto :goto_0

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->h:[Lcom/google/vr/sdk/widgets/video/deps/an;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Z)J
    .locals 4

    .line 35
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->M:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->k:Lcom/google/vr/sdk/widgets/video/deps/ax;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ax;->a(Z)J

    move-result-wide v0

    .line 38
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->t()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ba;->e(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 39
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->N:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ba;->b(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ba;->c(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    return-wide v2

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/u;)Lcom/google/vr/sdk/widgets/video/deps/u;
    .locals 1

    .line 288
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->x:Z

    if-nez v0, :cond_0

    .line 289
    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/u;->a:Lcom/google/vr/sdk/widgets/video/deps/u;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->A:Lcom/google/vr/sdk/widgets/video/deps/u;

    return-object p1

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->z:Lcom/google/vr/sdk/widgets/video/deps/u;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ba$d;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ba$d;->a(Lcom/google/vr/sdk/widgets/video/deps/ba$d;)Lcom/google/vr/sdk/widgets/video/deps/u;

    move-result-object v0

    goto :goto_0

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->A:Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 296
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/u;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 297
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 298
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->z:Lcom/google/vr/sdk/widgets/video/deps/u;

    goto :goto_1

    .line 299
    :cond_3
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->d:Lcom/google/vr/sdk/widgets/video/deps/ba$a;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ba$a;->a(Lcom/google/vr/sdk/widgets/video/deps/u;)Lcom/google/vr/sdk/widgets/video/deps/u;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->A:Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 300
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->A:Lcom/google/vr/sdk/widgets/video/deps/u;

    return-object p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->X:Z

    .line 141
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->k:Lcom/google/vr/sdk/widgets/video/deps/ax;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ax;->a()V

    .line 143
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->o:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 1

    .line 332
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->O:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 333
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->O:F

    .line 334
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->p()V

    :cond_0
    return-void
.end method

.method public a(IIII[III)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/av$a;
        }
    .end annotation

    .line 41
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->r:I

    .line 44
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->c(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->p:Z

    .line 45
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->e:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    .line 46
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->q:Z

    .line 48
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->p:Z

    if-eqz v0, :cond_1

    .line 49
    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->b(II)I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->F:I

    .line 51
    :cond_1
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->p:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 52
    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->q:Z

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->x:Z

    .line 53
    sget v1, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v3, 0x15

    if-ge v1, v3, :cond_5

    const/16 v1, 0x8

    if-ne p2, v1, :cond_5

    if-nez p5, :cond_5

    const/4 p5, 0x6

    new-array v1, p5, [I

    const/4 v3, 0x0

    :goto_3
    if-ge v3, p5, :cond_4

    .line 56
    aput v3, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    move-object p5, v1

    :cond_5
    if-eqz v0, :cond_8

    .line 59
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->g:Lcom/google/vr/sdk/widgets/video/deps/bi;

    invoke-virtual {v1, p6, p7}, Lcom/google/vr/sdk/widgets/video/deps/bi;->a(II)V

    .line 60
    iget-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->f:Lcom/google/vr/sdk/widgets/video/deps/az;

    invoke-virtual {p6, p5}, Lcom/google/vr/sdk/widgets/video/deps/az;->a([I)V

    .line 61
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->w()[Lcom/google/vr/sdk/widgets/video/deps/an;

    move-result-object p5

    array-length p6, p5

    const/4 p7, 0x0

    :goto_4
    if-ge v2, p6, :cond_7

    aget-object v1, p5, v2

    .line 62
    :try_start_0
    invoke-interface {v1, p3, p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/an;->a(III)Z

    move-result v3
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/an$a; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr p7, v3

    .line 66
    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/an;->a()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 67
    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/an;->b()I

    move-result p2

    .line 68
    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/an;->d()I

    move-result p3

    .line 69
    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/an;->c()I

    move-result p1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 65
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/av$a;

    invoke-direct {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/av$a;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_7
    move v2, p7

    .line 71
    :cond_8
    iget-boolean p5, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->p:Z

    invoke-static {p2, p5}, Lcom/google/vr/sdk/widgets/video/deps/ba;->a(IZ)I

    move-result p5

    if-eqz p5, :cond_c

    if-nez v2, :cond_9

    .line 75
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->r()Z

    move-result p6

    if-eqz p6, :cond_9

    iget p6, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->u:I

    if-ne p6, p1, :cond_9

    iget p6, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->s:I

    if-ne p6, p3, :cond_9

    iget p6, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->t:I

    if-ne p6, p5, :cond_9

    return-void

    .line 77
    :cond_9
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->i()V

    .line 78
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->w:Z

    .line 79
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->s:I

    .line 80
    iput p5, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->t:I

    .line 81
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->u:I

    .line 83
    iget-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->p:Z

    if-eqz p3, :cond_a

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->b(II)I

    move-result p1

    goto :goto_5

    :cond_a
    const/4 p1, -0x1

    :goto_5
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->I:I

    if-eqz p4, :cond_b

    goto :goto_6

    .line 84
    :cond_b
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->k()I

    move-result p4

    :goto_6
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->y:I

    return-void

    .line 73
    :cond_c
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/av$a;

    const/16 p3, 0x26

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Unsupported channel count: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/av$a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/aj;)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->v:Lcom/google/vr/sdk/widgets/video/deps/aj;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 304
    :cond_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->v:Lcom/google/vr/sdk/widgets/video/deps/aj;

    .line 305
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->aa:Z

    if-eqz p1, :cond_1

    return-void

    .line 307
    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->i()V

    const/4 p1, 0x0

    .line 308
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->Y:I

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/av$c;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->m:Lcom/google/vr/sdk/widgets/video/deps/av$c;

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ay;)V
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->Z:Lcom/google/vr/sdk/widgets/video/deps/ay;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ay;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 312
    :cond_0
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/ay;->a:I

    .line 313
    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/ay;->b:F

    .line 314
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->o:Landroid/media/AudioTrack;

    if-eqz v2, :cond_2

    .line 315
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->Z:Lcom/google/vr/sdk/widgets/video/deps/ay;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/ay;->a:I

    if-eq v2, v0, :cond_1

    .line 316
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->o:Landroid/media/AudioTrack;

    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    :cond_1
    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->o:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 319
    :cond_2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->Z:Lcom/google/vr/sdk/widgets/video/deps/ay;

    return-void
.end method

.method public a(I)Z
    .locals 3

    .line 32
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->c(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 33
    sget p1, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->c:Lcom/google/vr/sdk/widgets/video/deps/ak;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ak;->a(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public a(Ljava/nio/ByteBuffer;J)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/av$b;,
            Lcom/google/vr/sdk/widgets/video/deps/av$d;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 148
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->R:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Z)V

    .line 149
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->r()Z

    move-result v4

    if-nez v4, :cond_2

    .line 150
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->n()V

    .line 151
    iget-boolean v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->X:Z

    if-eqz v4, :cond_2

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->a()V

    .line 153
    :cond_2
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->k:Lcom/google/vr/sdk/widgets/video/deps/ax;

    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->t()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/google/vr/sdk/widgets/video/deps/ax;->a(J)Z

    move-result v4

    if-nez v4, :cond_3

    return v5

    .line 155
    :cond_3
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->R:Ljava/nio/ByteBuffer;

    const-string v7, "AudioTrack"

    const/4 v8, 0x0

    if-nez v4, :cond_c

    .line 156
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_4

    return v6

    .line 158
    :cond_4
    iget-boolean v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->p:Z

    if-nez v4, :cond_5

    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->L:I

    if-nez v4, :cond_5

    .line 159
    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->u:I

    invoke-static {v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/ba;->a(ILjava/nio/ByteBuffer;)I

    move-result v4

    iput v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->L:I

    if-nez v4, :cond_5

    return v6

    .line 162
    :cond_5
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->z:Lcom/google/vr/sdk/widgets/video/deps/u;

    const-wide/16 v9, 0x0

    if-eqz v4, :cond_7

    .line 163
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->o()Z

    move-result v4

    if-nez v4, :cond_6

    return v5

    .line 165
    :cond_6
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->z:Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 166
    iput-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->z:Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 167
    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->d:Lcom/google/vr/sdk/widgets/video/deps/ba$a;

    invoke-interface {v11, v4}, Lcom/google/vr/sdk/widgets/video/deps/ba$a;->a(Lcom/google/vr/sdk/widgets/video/deps/u;)Lcom/google/vr/sdk/widgets/video/deps/u;

    move-result-object v13

    .line 168
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->l:Ljava/util/ArrayDeque;

    new-instance v11, Lcom/google/vr/sdk/widgets/video/deps/ba$d;

    .line 169
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 170
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->t()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/ba;->e(J)J

    move-result-wide v16

    const/16 v18, 0x0

    move-object v12, v11

    invoke-direct/range {v12 .. v18}, Lcom/google/vr/sdk/widgets/video/deps/ba$d;-><init>(Lcom/google/vr/sdk/widgets/video/deps/u;JJLcom/google/vr/sdk/widgets/video/deps/ba$1;)V

    .line 171
    invoke-virtual {v4, v11}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->l()V

    .line 173
    :cond_7
    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->M:I

    if-nez v4, :cond_8

    .line 174
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->N:J

    const/4 v4, 0x1

    .line 175
    iput v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->M:I

    goto :goto_2

    :cond_8
    const/4 v4, 0x1

    .line 176
    iget-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->N:J

    .line 177
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->s()J

    move-result-wide v9

    invoke-direct {v0, v9, v10}, Lcom/google/vr/sdk/widgets/video/deps/ba;->d(J)J

    move-result-wide v9

    add-long/2addr v5, v9

    .line 178
    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->M:I

    const/4 v10, 0x2

    if-ne v9, v4, :cond_9

    sub-long v11, v5, v2

    .line 179
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    const-wide/32 v13, 0x30d40

    cmp-long v4, v11, v13

    if-lez v4, :cond_9

    const/16 v4, 0x50

    .line 180
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Discontinuity detected [expected "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", got "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iput v10, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->M:I

    .line 182
    :cond_9
    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->M:I

    if-ne v4, v10, :cond_a

    .line 183
    iget-wide v9, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->N:J

    sub-long v4, v2, v5

    add-long/2addr v9, v4

    iput-wide v9, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->N:J

    const/4 v4, 0x1

    .line 184
    iput v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->M:I

    .line 185
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->m:Lcom/google/vr/sdk/widgets/video/deps/av$c;

    if-eqz v4, :cond_a

    .line 186
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/av$c;->a()V

    .line 187
    :cond_a
    :goto_2
    iget-boolean v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->p:Z

    if-eqz v4, :cond_b

    .line 188
    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->G:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    int-to-long v9, v6

    add-long/2addr v4, v9

    iput-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->G:J

    goto :goto_3

    .line 189
    :cond_b
    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->H:J

    iget v6, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->L:I

    int-to-long v9, v6

    add-long/2addr v4, v9

    iput-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->H:J

    .line 190
    :goto_3
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->R:Ljava/nio/ByteBuffer;

    .line 191
    :cond_c
    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->w:Z

    if-eqz v1, :cond_d

    .line 192
    invoke-direct {v0, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ba;->a(J)V

    goto :goto_4

    .line 193
    :cond_d
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->R:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ba;->b(Ljava/nio/ByteBuffer;J)V

    .line 194
    :goto_4
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->R:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_e

    .line 195
    iput-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->R:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    return v1

    :cond_e
    const/4 v1, 0x1

    .line 197
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/ba;->k:Lcom/google/vr/sdk/widgets/video/deps/ax;

    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->t()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/ax;->c(J)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "Resetting stalled audio track"

    .line 198
    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->i()V

    return v1

    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method public b()V
    .locals 2

    .line 145
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->M:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 146
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->M:I

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 3

    .line 321
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 322
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->aa:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->Y:I

    if-eq v0, p1, :cond_2

    .line 323
    :cond_1
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->aa:Z

    .line 324
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->Y:I

    .line 325
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->i()V

    :cond_2
    return-void
.end method

.method public c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/av$d;
        }
    .end annotation

    .line 258
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->W:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->r()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->k:Lcom/google/vr/sdk/widgets/video/deps/ax;

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->t()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ax;->d(J)V

    .line 262
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->o:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    const/4 v0, 0x0

    .line 263
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->E:I

    const/4 v0, 0x1

    .line 264
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->W:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 286
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->W:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->e()Z

    move-result v0

    if-nez v0, :cond_0

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

.method public e()Z
    .locals 3

    .line 287
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->k:Lcom/google/vr/sdk/widgets/video/deps/ax;

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->t()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ax;->e(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Lcom/google/vr/sdk/widgets/video/deps/u;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->A:Lcom/google/vr/sdk/widgets/video/deps/u;

    return-object v0
.end method

.method public g()V
    .locals 1

    .line 327
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->aa:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 328
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->aa:Z

    .line 329
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->Y:I

    .line 330
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->i()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 341
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->X:Z

    .line 342
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->k:Lcom/google/vr/sdk/widgets/video/deps/ax;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ax;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->o:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 5

    .line 345
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    .line 346
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->G:J

    .line 347
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->H:J

    .line 348
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->J:J

    .line 349
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->K:J

    const/4 v2, 0x0

    .line 350
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->L:I

    .line 351
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->z:Lcom/google/vr/sdk/widgets/video/deps/u;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 352
    iput-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->A:Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 353
    iput-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->z:Lcom/google/vr/sdk/widgets/video/deps/u;

    goto :goto_0

    .line 354
    :cond_0
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 355
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/ba$d;

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/ba$d;->a(Lcom/google/vr/sdk/widgets/video/deps/ba$d;)Lcom/google/vr/sdk/widgets/video/deps/u;

    move-result-object v3

    iput-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->A:Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 356
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    .line 357
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->B:J

    .line 358
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->C:J

    .line 359
    iput-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->R:Ljava/nio/ByteBuffer;

    .line 360
    iput-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->S:Ljava/nio/ByteBuffer;

    .line 361
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->m()V

    .line 362
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->W:Z

    const/4 v0, -0x1

    .line 363
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->V:I

    .line 364
    iput-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->D:Ljava/nio/ByteBuffer;

    .line 365
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->E:I

    .line 366
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->M:I

    .line 367
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->k:Lcom/google/vr/sdk/widgets/video/deps/ax;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ax;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->o:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->o:Landroid/media/AudioTrack;

    .line 370
    iput-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->o:Landroid/media/AudioTrack;

    .line 371
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->k:Lcom/google/vr/sdk/widgets/video/deps/ax;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/ax;->d()V

    .line 372
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->j:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 373
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/ba$1;

    invoke-direct {v1, p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ba$1;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ba;Landroid/media/AudioTrack;)V

    .line 374
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/ba$1;->start()V

    :cond_3
    return-void
.end method

.method public j()V
    .locals 5

    .line 376
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->i()V

    .line 377
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->q()V

    .line 378
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->h:[Lcom/google/vr/sdk/widgets/video/deps/an;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 379
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/an;->i()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->i:[Lcom/google/vr/sdk/widgets/video/deps/an;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 382
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/an;->i()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 384
    :cond_1
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->Y:I

    .line 385
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba;->X:Z

    return-void
.end method
