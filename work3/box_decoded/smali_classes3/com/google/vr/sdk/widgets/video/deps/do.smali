.class public final Lcom/google/vr/sdk/widgets/video/deps/do;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/do$b;,
        Lcom/google/vr/sdk/widgets/video/deps/do$c;,
        Lcom/google/vr/sdk/widgets/video/deps/do$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/vr/sdk/widgets/video/deps/cu;

.field private static final b:[B

.field private static final c:[B

.field private static final d:[B

.field private static final e:[B

.field private static final f:[B

.field private static final g:Ljava/util/UUID;


# instance fields
.field private A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

.field private B:Z

.field private C:I

.field private D:J

.field private E:Z

.field private F:J

.field private G:J

.field private H:J

.field private I:Lcom/google/vr/sdk/widgets/video/deps/oz;

.field private J:Lcom/google/vr/sdk/widgets/video/deps/oz;

.field private K:Z

.field private L:I

.field private M:J

.field private N:J

.field private O:I

.field private P:I

.field private Q:[I

.field private R:I

.field private S:I

.field private T:I

.field private U:I

.field private V:Z

.field private W:Z

.field private X:Z

.field private Y:Z

.field private Z:B

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:Z

.field private ae:Z

.field private af:Lcom/google/vr/sdk/widgets/video/deps/ct;

.field private final h:Lcom/google/vr/sdk/widgets/video/deps/dm;

.field private final i:Lcom/google/vr/sdk/widgets/video/deps/dr;

.field private final j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/do$b;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Z

.field private final l:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final m:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final n:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final o:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final p:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final q:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final r:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final s:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final t:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private u:Ljava/nio/ByteBuffer;

.field private v:J

.field private w:J

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 600
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->a:Lcom/google/vr/sdk/widgets/video/deps/cu;

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/do;->a:Lcom/google/vr/sdk/widgets/video/deps/cu;

    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 601
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/vr/sdk/widgets/video/deps/do;->b:[B

    const/16 v1, 0xc

    new-array v1, v1, [B

    .line 602
    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/vr/sdk/widgets/video/deps/do;->c:[B

    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    .line 603
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->c(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/google/vr/sdk/widgets/video/deps/do;->d:[B

    new-array v0, v0, [B

    .line 604
    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/do;->e:[B

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 605
    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/do;->f:[B

    .line 606
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/do;->g:Ljava/util/UUID;

    return-void

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data

    :array_2
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    :array_3
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/do;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/dl;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/dl;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/do;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dm;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/dm;I)V
    .locals 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->w:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->x:J

    .line 8
    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->y:J

    .line 9
    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->z:J

    .line 10
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->F:J

    .line 11
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->G:J

    .line 12
    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->H:J

    .line 13
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->h:Lcom/google/vr/sdk/widgets/video/deps/dm;

    .line 14
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/do$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/do$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/do;Lcom/google/vr/sdk/widgets/video/deps/do$1;)V

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dm;->a(Lcom/google/vr/sdk/widgets/video/deps/dn;)V

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->k:Z

    .line 16
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/dr;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/dr;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->i:Lcom/google/vr/sdk/widgets/video/deps/dr;

    .line 17
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->j:Landroid/util/SparseArray;

    .line 18
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 19
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>([B)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->o:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 20
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->p:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 21
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/pc;->a:[B

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>([B)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->l:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 22
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->m:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 23
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->q:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 24
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->r:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 25
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->s:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 26
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->t:Lcom/google/vr/sdk/widgets/video/deps/pe;

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/dc;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->q:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 519
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 520
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->q:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-interface {p2, p3, p1}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 521
    invoke-interface {p2, p1, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;IZ)I

    move-result p1

    .line 522
    :goto_0
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->U:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->U:I

    .line 523
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->ac:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->ac:I

    return p1
.end method

.method private a(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 559
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->x:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    .line 561
    invoke-static/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(JJJ)J

    move-result-wide p1

    return-wide p1

    .line 560
    :cond_0
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string p2, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/cs;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v0

    if-lt v0, p2, :cond_0

    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->e()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 382
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 383
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v2

    .line 384
    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BI)V

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v1

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BII)V

    .line 386
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b(I)V

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/do$b;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 388
    iget-object v0, p2, Lcom/google/vr/sdk/widgets/video/deps/do$b;->a:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    sget-object p2, Lcom/google/vr/sdk/widgets/video/deps/do;->b:[B

    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;[BI)V

    return-void

    .line 391
    :cond_0
    iget-object v0, p2, Lcom/google/vr/sdk/widgets/video/deps/do$b;->a:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    sget-object p2, Lcom/google/vr/sdk/widgets/video/deps/do;->e:[B

    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;[BI)V

    return-void

    .line 394
    :cond_1
    iget-object v0, p2, Lcom/google/vr/sdk/widgets/video/deps/do$b;->O:Lcom/google/vr/sdk/widgets/video/deps/dc;

    .line 395
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->V:Z

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_10

    .line 396
    iget-boolean v1, p2, Lcom/google/vr/sdk/widgets/video/deps/do$b;->e:Z

    if-eqz v1, :cond_e

    .line 397
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->T:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v1, v6

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->T:I

    .line 398
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->W:Z

    const/16 v6, 0x80

    if-nez v1, :cond_3

    .line 399
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-interface {p1, v1, v5, v4}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BII)V

    .line 400
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->U:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->U:I

    .line 401
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    if-eq v1, v6, :cond_2

    .line 403
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    aget-byte v1, v1, v5

    iput-byte v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->Z:B

    .line 404
    iput-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->W:Z

    goto :goto_0

    .line 402
    :cond_2
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string p2, "Extension bit is set in signal byte"

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1

    .line 405
    :cond_3
    :goto_0
    iget-byte v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->Z:B

    and-int/lit8 v7, v1, 0x1

    if-ne v7, v4, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_f

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 408
    :goto_2
    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->T:I

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v7, v8

    iput v7, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->T:I

    .line 409
    iget-boolean v7, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->X:Z

    if-nez v7, :cond_7

    .line 410
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->s:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v7, v7, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/16 v8, 0x8

    invoke-interface {p1, v7, v5, v8}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BII)V

    .line 411
    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->U:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->U:I

    .line 412
    iput-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->X:Z

    .line 413
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v7, v7, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v7, v5

    .line 414
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v6, v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 415
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-interface {v0, v6, v4}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    .line 416
    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->ac:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->ac:I

    .line 417
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->s:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v6, v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 418
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->s:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-interface {v0, v6, v8}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    .line 419
    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->ac:I

    add-int/2addr v6, v8

    iput v6, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->ac:I

    :cond_7
    if-eqz v1, :cond_f

    .line 421
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->Y:Z

    if-nez v1, :cond_8

    .line 422
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-interface {p1, v1, v5, v4}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BII)V

    .line 423
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->U:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->U:I

    .line 424
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 425
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->aa:I

    .line 426
    iput-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->Y:Z

    .line 427
    :cond_8
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->aa:I

    mul-int/lit8 v1, v1, 0x4

    .line 428
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v6, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a(I)V

    .line 429
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-interface {p1, v6, v5, v1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BII)V

    .line 430
    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->U:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->U:I

    .line 431
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->aa:I

    div-int/2addr v1, v3

    add-int/2addr v1, v4

    int-to-short v1, v1

    mul-int/lit8 v6, v1, 0x6

    add-int/2addr v6, v3

    .line 433
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->u:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_9

    .line 434
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    if-ge v7, v6, :cond_a

    .line 435
    :cond_9
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->u:Ljava/nio/ByteBuffer;

    .line 436
    :cond_a
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 437
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 439
    :goto_4
    iget v8, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->aa:I

    if-ge v1, v8, :cond_c

    .line 441
    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v8}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v8

    .line 442
    rem-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_b

    .line 443
    iget-object v9, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->u:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    int-to-short v7, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 444
    :cond_b
    iget-object v9, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->u:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_5
    add-int/lit8 v1, v1, 0x1

    move v7, v8

    goto :goto_4

    .line 446
    :cond_c
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->U:I

    sub-int v1, p3, v1

    sub-int/2addr v1, v7

    .line 447
    rem-int/2addr v8, v3

    if-ne v8, v4, :cond_d

    .line 448
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 449
    :cond_d
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->u:Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 450
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 451
    :goto_6
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->t:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BI)V

    .line 452
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->t:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-interface {v0, v1, v6}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    .line 453
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->ac:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->ac:I

    goto :goto_7

    .line 454
    :cond_e
    iget-object v1, p2, Lcom/google/vr/sdk/widgets/video/deps/do$b;->f:[B

    if-eqz v1, :cond_f

    .line 455
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->q:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v6, p2, Lcom/google/vr/sdk/widgets/video/deps/do$b;->f:[B

    iget-object v7, p2, Lcom/google/vr/sdk/widgets/video/deps/do$b;->f:[B

    array-length v7, v7

    invoke-virtual {v1, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BI)V

    .line 456
    :cond_f
    :goto_7
    iput-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->V:Z

    .line 457
    :cond_10
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->q:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v1

    add-int/2addr p3, v1

    .line 458
    iget-object v1, p2, Lcom/google/vr/sdk/widgets/video/deps/do$b;->a:Ljava/lang/String;

    const-string v6, "V_MPEG4/ISO/AVC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p2, Lcom/google/vr/sdk/widgets/video/deps/do$b;->a:Ljava/lang/String;

    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_a

    .line 476
    :cond_11
    iget-object v1, p2, Lcom/google/vr/sdk/widgets/video/deps/do$b;->L:Lcom/google/vr/sdk/widgets/video/deps/do$c;

    if-eqz v1, :cond_13

    .line 477
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->q:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v1

    if-nez v1, :cond_12

    goto :goto_8

    :cond_12
    const/4 v4, 0x0

    :goto_8
    invoke-static {v4}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 478
    iget-object v1, p2, Lcom/google/vr/sdk/widgets/video/deps/do$b;->L:Lcom/google/vr/sdk/widgets/video/deps/do$c;

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->T:I

    invoke-virtual {v1, p1, v3, p3}, Lcom/google/vr/sdk/widgets/video/deps/do$c;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;II)V

    .line 479
    :cond_13
    :goto_9
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->U:I

    if-ge v1, p3, :cond_16

    sub-int v1, p3, v1

    .line 480
    invoke-direct {p0, p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/dc;I)I

    goto :goto_9

    .line 459
    :cond_14
    :goto_a
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->m:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    .line 460
    aput-byte v5, v1, v5

    .line 461
    aput-byte v5, v1, v4

    .line 462
    aput-byte v5, v1, v3

    .line 463
    iget v3, p2, Lcom/google/vr/sdk/widgets/video/deps/do$b;->P:I

    .line 464
    iget v4, p2, Lcom/google/vr/sdk/widgets/video/deps/do$b;->P:I

    rsub-int/lit8 v4, v4, 0x4

    .line 465
    :goto_b
    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->U:I

    if-ge v6, p3, :cond_16

    .line 466
    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->ab:I

    if-nez v6, :cond_15

    .line 467
    invoke-direct {p0, p1, v1, v4, v3}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;[BII)V

    .line 468
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->m:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v6, v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 469
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->m:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v6}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v6

    iput v6, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->ab:I

    .line 470
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->l:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v6, v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 471
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->l:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-interface {v0, v6, v2}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    .line 472
    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->ac:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->ac:I

    goto :goto_b

    .line 474
    :cond_15
    invoke-direct {p0, p1, v0, v6}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/dc;I)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->ab:I

    goto :goto_b

    .line 481
    :cond_16
    iget-object p1, p2, Lcom/google/vr/sdk/widgets/video/deps/do$b;->a:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 482
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->o:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1, v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 483
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->o:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-interface {v0, p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    .line 484
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->ac:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->ac:I

    :cond_17
    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/cs;[BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 486
    array-length v0, p2

    add-int/2addr v0, p3

    .line 487
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->r:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->e()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 488
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->r:Lcom/google/vr/sdk/widgets/video/deps/pe;

    add-int v2, v0, p3

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    goto :goto_0

    .line 489
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->r:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->r:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    array-length p2, p2

    invoke-interface {p1, v1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BII)V

    .line 491
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->r:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a(I)V

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/cs;[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->q:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int v1, p3, v0

    sub-int v2, p4, v0

    .line 512
    invoke-interface {p1, p2, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BII)V

    if-lez v0, :cond_0

    .line 514
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->q:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1, p2, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BII)V

    .line 515
    :cond_0
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->U:I

    add-int/2addr p1, p4

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->U:I

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/do$b;J)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    .line 358
    iget-object v0, v8, Lcom/google/vr/sdk/widgets/video/deps/do$b;->L:Lcom/google/vr/sdk/widgets/video/deps/do$c;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, v8, Lcom/google/vr/sdk/widgets/video/deps/do$b;->L:Lcom/google/vr/sdk/widgets/video/deps/do$c;

    move-wide/from16 v9, p2

    invoke-virtual {v0, v8, v9, v10}, Lcom/google/vr/sdk/widgets/video/deps/do$c;->a(Lcom/google/vr/sdk/widgets/video/deps/do$b;J)V

    goto :goto_1

    :cond_0
    move-wide/from16 v9, p2

    .line 360
    iget-object v0, v8, Lcom/google/vr/sdk/widgets/video/deps/do$b;->a:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v3, 0x13

    const-wide/16 v4, 0x3e8

    .line 361
    sget-object v6, Lcom/google/vr/sdk/widgets/video/deps/do;->c:[B

    const-string v2, "%02d:%02d:%02d,%03d"

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(Lcom/google/vr/sdk/widgets/video/deps/do$b;Ljava/lang/String;IJ[B)V

    goto :goto_0

    .line 362
    :cond_1
    iget-object v0, v8, Lcom/google/vr/sdk/widgets/video/deps/do$b;->a:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v3, 0x15

    const-wide/16 v4, 0x2710

    .line 363
    sget-object v6, Lcom/google/vr/sdk/widgets/video/deps/do;->f:[B

    const-string v2, "%01d:%02d:%02d:%02d"

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(Lcom/google/vr/sdk/widgets/video/deps/do$b;Ljava/lang/String;IJ[B)V

    .line 364
    :cond_2
    :goto_0
    iget-object v0, v8, Lcom/google/vr/sdk/widgets/video/deps/do$b;->O:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget v11, v7, Lcom/google/vr/sdk/widgets/video/deps/do;->T:I

    iget v12, v7, Lcom/google/vr/sdk/widgets/video/deps/do;->ac:I

    const/4 v13, 0x0

    iget-object v14, v8, Lcom/google/vr/sdk/widgets/video/deps/do$b;->g:Lcom/google/vr/sdk/widgets/video/deps/dc$a;

    move-object v8, v0

    move-wide/from16 v9, p2

    invoke-interface/range {v8 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(JIIILcom/google/vr/sdk/widgets/video/deps/dc$a;)V

    :goto_1
    const/4 v0, 0x1

    .line 365
    iput-boolean v0, v7, Lcom/google/vr/sdk/widgets/video/deps/do;->ad:Z

    .line 366
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/do;->e()V

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/do$b;Ljava/lang/String;IJ[B)V
    .locals 9

    .line 493
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->r:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->N:J

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-object v8, p6

    invoke-static/range {v1 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/do;->a([BJLjava/lang/String;IJ[B)V

    .line 494
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->O:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->r:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    .line 495
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->ac:I

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->r:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->ac:I

    return-void
.end method

.method private static a([BJLjava/lang/String;IJ[B)V
    .locals 11

    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    move-object/from16 v1, p7

    move-object v2, v1

    goto :goto_0

    :cond_0
    const-wide v1, 0xd693a400L

    .line 499
    div-long v1, p1, v1

    long-to-int v2, v1

    mul-int/lit16 v1, v2, 0xe10

    int-to-long v3, v1

    const-wide/32 v5, 0xf4240

    mul-long v3, v3, v5

    sub-long v3, p1, v3

    const-wide/32 v7, 0x3938700

    .line 501
    div-long v7, v3, v7

    long-to-int v1, v7

    mul-int/lit8 v7, v1, 0x3c

    int-to-long v7, v7

    mul-long v7, v7, v5

    sub-long/2addr v3, v7

    .line 503
    div-long v7, v3, v5

    long-to-int v8, v7

    int-to-long v9, v8

    mul-long v9, v9, v5

    sub-long/2addr v3, v9

    .line 505
    div-long v3, v3, p5

    long-to-int v4, v3

    .line 506
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    .line 507
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    move-object v1, p3

    .line 508
    invoke-static {v3, p3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->c(Ljava/lang/String;)[B

    move-result-object v1

    move-object/from16 v2, p7

    .line 509
    :goto_0
    array-length v2, v2

    move-object v3, p0

    move v4, p4

    invoke-static {v1, v0, p0, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/cz;J)Z
    .locals 5

    .line 549
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->E:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 550
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->G:J

    .line 551
    iget-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->F:J

    iput-wide p2, p1, Lcom/google/vr/sdk/widgets/video/deps/cz;->a:J

    .line 552
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->E:Z

    return v1

    .line 554
    :cond_0
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->B:Z

    if-eqz p2, :cond_1

    iget-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->G:J

    const-wide/16 v3, -0x1

    cmp-long v0, p2, v3

    if-eqz v0, :cond_1

    .line 555
    iput-wide p2, p1, Lcom/google/vr/sdk/widgets/video/deps/cz;->a:J

    .line 556
    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->G:J

    return v1

    :cond_1
    return v2
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "V_VP8"

    .line 562
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_VP9"

    .line 563
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEG2"

    .line 564
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEG4/ISO/SP"

    .line 565
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEG4/ISO/ASP"

    .line 566
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEG4/ISO/AP"

    .line 567
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEG4/ISO/AVC"

    .line 568
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEGH/ISO/HEVC"

    .line 569
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MS/VFW/FOURCC"

    .line 570
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_THEORA"

    .line 571
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_OPUS"

    .line 572
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_VORBIS"

    .line 573
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_AAC"

    .line 574
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_MPEG/L2"

    .line 575
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_MPEG/L3"

    .line 576
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_AC3"

    .line 577
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_EAC3"

    .line 578
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_TRUEHD"

    .line 579
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_DTS"

    .line 580
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_DTS/EXPRESS"

    .line 581
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_DTS/LOSSLESS"

    .line 582
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_FLAC"

    .line 583
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_MS/ACM"

    .line 584
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_PCM/INT/LIT"

    .line 585
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_TEXT/UTF8"

    .line 586
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_TEXT/ASS"

    .line 587
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_VOBSUB"

    .line 588
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_HDMV/PGS"

    .line 589
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_DVBSUB"

    .line 590
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static a([II)[I
    .locals 1

    if-nez p0, :cond_0

    .line 593
    new-array p0, p1, [I

    return-object p0

    .line 594
    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    return-object p0

    .line 596
    :cond_1
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method

.method static final synthetic a()[Lcom/google/vr/sdk/widgets/video/deps/cr;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/cr;

    .line 597
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/do;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/do;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static synthetic b()[B
    .locals 1

    .line 598
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/do;->d:[B

    return-object v0
.end method

.method static synthetic d()Ljava/util/UUID;
    .locals 1

    .line 599
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/do;->g:Ljava/util/UUID;

    return-object v0
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x0

    .line 368
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->U:I

    .line 369
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->ac:I

    .line 370
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->ab:I

    .line 371
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->V:Z

    .line 372
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->W:Z

    .line 373
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->Y:Z

    .line 374
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->aa:I

    .line 375
    iput-byte v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->Z:B

    .line 376
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->X:Z

    .line 377
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->q:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a()V

    return-void
.end method

.method private f()Lcom/google/vr/sdk/widgets/video/deps/da;
    .locals 12

    .line 525
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->w:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_3

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->z:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-eqz v5, :cond_3

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->I:Lcom/google/vr/sdk/widgets/video/deps/oz;

    if-eqz v0, :cond_3

    .line 526
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/oz;->a()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->J:Lcom/google/vr/sdk/widgets/video/deps/oz;

    if-eqz v0, :cond_3

    .line 527
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/oz;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->I:Lcom/google/vr/sdk/widgets/video/deps/oz;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/oz;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->I:Lcom/google/vr/sdk/widgets/video/deps/oz;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/oz;->a()I

    move-result v0

    .line 532
    new-array v1, v0, [I

    .line 533
    new-array v3, v0, [J

    .line 534
    new-array v4, v0, [J

    .line 535
    new-array v5, v0, [J

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v0, :cond_1

    .line 537
    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->I:Lcom/google/vr/sdk/widgets/video/deps/oz;

    invoke-virtual {v8, v7}, Lcom/google/vr/sdk/widgets/video/deps/oz;->a(I)J

    move-result-wide v8

    aput-wide v8, v5, v7

    .line 538
    iget-wide v8, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->w:J

    iget-object v10, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->J:Lcom/google/vr/sdk/widgets/video/deps/oz;

    invoke-virtual {v10, v7}, Lcom/google/vr/sdk/widgets/video/deps/oz;->a(I)J

    move-result-wide v10

    add-long/2addr v8, v10

    aput-wide v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v7, v0, -0x1

    if-ge v6, v7, :cond_2

    add-int/lit8 v7, v6, 0x1

    .line 541
    aget-wide v8, v3, v7

    aget-wide v10, v3, v6

    sub-long/2addr v8, v10

    long-to-int v9, v8

    aput v9, v1, v6

    .line 542
    aget-wide v8, v5, v7

    aget-wide v10, v5, v6

    sub-long/2addr v8, v10

    aput-wide v8, v4, v6

    move v6, v7

    goto :goto_1

    .line 544
    :cond_2
    iget-wide v8, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->w:J

    iget-wide v10, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->v:J

    add-long/2addr v8, v10

    aget-wide v10, v3, v7

    sub-long/2addr v8, v10

    long-to-int v0, v8

    aput v0, v1, v7

    .line 545
    iget-wide v8, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->z:J

    aget-wide v10, v5, v7

    sub-long/2addr v8, v10

    aput-wide v8, v4, v7

    .line 546
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->I:Lcom/google/vr/sdk/widgets/video/deps/oz;

    .line 547
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->J:Lcom/google/vr/sdk/widgets/video/deps/oz;

    .line 548
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cm;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/cm;-><init>([I[J[J[J)V

    return-object v0

    .line 528
    :cond_3
    :goto_2
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->I:Lcom/google/vr/sdk/widgets/video/deps/oz;

    .line 529
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->J:Lcom/google/vr/sdk/widgets/video/deps/oz;

    .line 530
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/da$b;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->z:J

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/da$b;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->ad:Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    .line 43
    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->ad:Z

    if-nez v3, :cond_1

    .line 44
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->h:Lcom/google/vr/sdk/widgets/video/deps/dm;

    invoke-interface {v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/dm;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v3

    invoke-direct {p0, p2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(Lcom/google/vr/sdk/widgets/video/deps/cz;J)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_1
    if-nez v2, :cond_3

    .line 48
    :goto_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->j:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 49
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->j:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/do$b;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1

    :cond_3
    return v0
.end method

.method a(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    const/16 v0, 0xa0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_d

    const/16 v0, 0xae

    if-eq p1, v0, :cond_b

    const/16 v0, 0x4dbb

    const v3, 0x1c53bb6b

    if-eq p1, v0, :cond_9

    const/16 v0, 0x6240

    if-eq p1, v0, :cond_7

    const/16 v0, 0x6d80

    if-eq p1, v0, :cond_5

    const v0, 0x1549a966

    if-eq p1, v0, :cond_3

    const v0, 0x1654ae6b

    if-eq p1, v0, :cond_1

    if-eq p1, v3, :cond_0

    goto/16 :goto_0

    .line 91
    :cond_0
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->B:Z

    if-nez p1, :cond_10

    .line 92
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->af:Lcom/google/vr/sdk/widgets/video/deps/ct;

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/do;->f()Lcom/google/vr/sdk/widgets/video/deps/da;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(Lcom/google/vr/sdk/widgets/video/deps/da;)V

    .line 93
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->B:Z

    goto/16 :goto_0

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->j:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_2

    .line 114
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->af:Lcom/google/vr/sdk/widgets/video/deps/ct;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a()V

    goto/16 :goto_0

    .line 113
    :cond_2
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string v0, "No valid tracks were found"

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_3
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->x:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_4

    const-wide/32 v0, 0xf4240

    .line 84
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->x:J

    .line 85
    :cond_4
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->y:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_10

    .line 86
    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->z:J

    goto/16 :goto_0

    .line 105
    :cond_5
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iget-boolean p1, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->e:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->f:[B

    if-nez p1, :cond_6

    goto/16 :goto_0

    .line 106
    :cond_6
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string v0, "Combining encryption and compression is not supported"

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_7
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iget-boolean p1, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->e:Z

    if-eqz p1, :cond_10

    .line 102
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->g:Lcom/google/vr/sdk/widgets/video/deps/dc$a;

    if-eqz p1, :cond_8

    .line 104
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cb;

    new-array v2, v2, [Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    sget-object v4, Lcom/google/vr/sdk/widgets/video/deps/b;->a:Ljava/util/UUID;

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/do$b;->g:Lcom/google/vr/sdk/widgets/video/deps/dc$a;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/dc$a;->b:[B

    const-string v6, "video/webm"

    invoke-direct {v3, v4, v6, v5}, Lcom/google/vr/sdk/widgets/video/deps/cb$a;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/cb;-><init>([Lcom/google/vr/sdk/widgets/video/deps/cb$a;)V

    iput-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->i:Lcom/google/vr/sdk/widgets/video/deps/cb;

    goto :goto_0

    .line 103
    :cond_8
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_9
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->C:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->D:J

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_a

    if-ne p1, v3, :cond_10

    .line 90
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->F:J

    goto :goto_0

    .line 88
    :cond_a
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_b
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 108
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->af:Lcom/google/vr/sdk/widgets/video/deps/ct;

    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/do$b;->a(Lcom/google/vr/sdk/widgets/video/deps/ct;I)V

    .line 109
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->j:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/do$b;->b:I

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_c
    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    goto :goto_0

    .line 94
    :cond_d
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->L:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    return-void

    .line 96
    :cond_e
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->ae:Z

    if-nez p1, :cond_f

    .line 97
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->T:I

    or-int/2addr p1, v2

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->T:I

    .line 98
    :cond_f
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->j:Landroid/util/SparseArray;

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->R:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->M:J

    invoke-direct {p0, p1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(Lcom/google/vr/sdk/widgets/video/deps/do$b;J)V

    .line 99
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->L:I

    :cond_10
    :goto_0
    return-void
.end method

.method a(ID)V
    .locals 1

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 237
    :pswitch_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->F:F

    goto :goto_0

    .line 235
    :pswitch_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->E:F

    goto :goto_0

    .line 233
    :pswitch_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->D:F

    goto :goto_0

    .line 231
    :pswitch_3
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->C:F

    goto :goto_0

    .line 229
    :pswitch_4
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->B:F

    goto :goto_0

    .line 227
    :pswitch_5
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->A:F

    goto :goto_0

    .line 225
    :pswitch_6
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->z:F

    goto :goto_0

    .line 223
    :pswitch_7
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->y:F

    goto :goto_0

    .line 221
    :pswitch_8
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->x:F

    goto :goto_0

    .line 219
    :pswitch_9
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->w:F

    goto :goto_0

    :cond_0
    double-to-long p1, p2

    .line 215
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->y:J

    goto :goto_0

    .line 217
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    double-to-int p2, p2

    iput p2, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->I:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x55d1
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

.method a(IILcom/google/vr/sdk/widgets/video/deps/cs;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/16 v4, 0xa1

    const/16 v5, 0xa3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v1, v4, :cond_5

    if-eq v1, v5, :cond_5

    const/16 v4, 0x4255

    if-eq v1, v4, :cond_4

    const/16 v4, 0x47e2

    if-eq v1, v4, :cond_3

    const/16 v4, 0x53ab

    if-eq v1, v4, :cond_2

    const/16 v4, 0x63a2

    if-eq v1, v4, :cond_1

    const/16 v4, 0x7672

    if-ne v1, v4, :cond_0

    .line 257
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    new-array v4, v2, [B

    iput-object v4, v1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->o:[B

    .line 258
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->o:[B

    invoke-interface {v3, v1, v6, v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BII)V

    goto/16 :goto_d

    .line 356
    :cond_0
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/s;

    const/16 v3, 0x1a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected id: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw v2

    .line 254
    :cond_1
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    new-array v4, v2, [B

    iput-object v4, v1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->h:[B

    .line 255
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->h:[B

    invoke-interface {v3, v1, v6, v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BII)V

    goto/16 :goto_d

    .line 249
    :cond_2
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->p:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 250
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->p:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    rsub-int/lit8 v4, v2, 0x4

    invoke-interface {v3, v1, v4, v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BII)V

    .line 251
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->p:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v1, v6}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 252
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->p:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->n()J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->C:I

    goto/16 :goto_d

    .line 263
    :cond_3
    new-array v1, v2, [B

    .line 264
    invoke-interface {v3, v1, v6, v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BII)V

    .line 265
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/dc$a;

    invoke-direct {v3, v7, v1, v6, v6}, Lcom/google/vr/sdk/widgets/video/deps/dc$a;-><init>(I[BII)V

    iput-object v3, v2, Lcom/google/vr/sdk/widgets/video/deps/do$b;->g:Lcom/google/vr/sdk/widgets/video/deps/dc$a;

    goto/16 :goto_d

    .line 260
    :cond_4
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    new-array v4, v2, [B

    iput-object v4, v1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->f:[B

    .line 261
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->f:[B

    invoke-interface {v3, v1, v6, v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BII)V

    goto/16 :goto_d

    .line 267
    :cond_5
    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->L:I

    const/16 v8, 0x8

    if-nez v4, :cond_6

    .line 268
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->i:Lcom/google/vr/sdk/widgets/video/deps/dr;

    invoke-virtual {v4, v3, v6, v7, v8}, Lcom/google/vr/sdk/widgets/video/deps/dr;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;ZZI)J

    move-result-wide v9

    long-to-int v4, v9

    iput v4, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->R:I

    .line 269
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->i:Lcom/google/vr/sdk/widgets/video/deps/dr;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/dr;->b()I

    move-result v4

    iput v4, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->S:I

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 270
    iput-wide v9, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->N:J

    .line 271
    iput v7, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->L:I

    .line 272
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a()V

    .line 273
    :cond_6
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->j:Landroid/util/SparseArray;

    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->R:I

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/vr/sdk/widgets/video/deps/do$b;

    if-nez v4, :cond_7

    .line 275
    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->S:I

    sub-int v1, v2, v1

    invoke-interface {v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    .line 276
    iput v6, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->L:I

    return-void

    .line 278
    :cond_7
    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->L:I

    if-ne v9, v7, :cond_1a

    const/4 v9, 0x3

    .line 279
    invoke-direct {v0, v3, v9}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;I)V

    .line 280
    iget-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v10, v10, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v11, 0x2

    aget-byte v10, v10, v11

    and-int/lit8 v10, v10, 0x6

    shr-int/2addr v10, v7

    const/16 v12, 0xff

    if-nez v10, :cond_8

    .line 282
    iput v7, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->P:I

    .line 283
    iget-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->Q:[I

    invoke-static {v10, v7}, Lcom/google/vr/sdk/widgets/video/deps/do;->a([II)[I

    move-result-object v10

    iput-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->Q:[I

    .line 284
    iget v13, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->S:I

    sub-int/2addr v2, v13

    sub-int/2addr v2, v9

    aput v2, v10, v6

    goto/16 :goto_6

    :cond_8
    if-ne v1, v5, :cond_19

    const/4 v13, 0x4

    .line 287
    invoke-direct {v0, v3, v13}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;I)V

    .line 288
    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v14, v14, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    aget-byte v14, v14, v9

    and-int/2addr v14, v12

    add-int/2addr v14, v7

    iput v14, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->P:I

    .line 289
    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->Q:[I

    .line 290
    invoke-static {v15, v14}, Lcom/google/vr/sdk/widgets/video/deps/do;->a([II)[I

    move-result-object v14

    iput-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->Q:[I

    if-ne v10, v11, :cond_9

    .line 292
    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->S:I

    sub-int/2addr v2, v9

    sub-int/2addr v2, v13

    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->P:I

    div-int/2addr v2, v9

    .line 293
    invoke-static {v14, v6, v9, v2}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_6

    :cond_9
    if-ne v10, v7, :cond_c

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 297
    :goto_0
    iget v14, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->P:I

    add-int/lit8 v15, v14, -0x1

    if-ge v9, v15, :cond_b

    .line 298
    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->Q:[I

    aput v6, v14, v9

    :cond_a
    add-int/2addr v13, v7

    .line 299
    invoke-direct {v0, v3, v13}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;I)V

    .line 300
    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v14, v14, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    add-int/lit8 v15, v13, -0x1

    aget-byte v14, v14, v15

    and-int/2addr v14, v12

    .line 301
    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->Q:[I

    aget v16, v15, v9

    add-int v16, v16, v14

    aput v16, v15, v9

    if-eq v14, v12, :cond_a

    .line 303
    aget v14, v15, v9

    add-int/2addr v10, v14

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 305
    :cond_b
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->Q:[I

    sub-int/2addr v14, v7

    iget v15, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->S:I

    sub-int/2addr v2, v15

    sub-int/2addr v2, v13

    sub-int/2addr v2, v10

    aput v2, v9, v14

    goto/16 :goto_6

    :cond_c
    if-ne v10, v9, :cond_18

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 309
    :goto_1
    iget v14, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->P:I

    add-int/lit8 v15, v14, -0x1

    if-ge v9, v15, :cond_13

    .line 310
    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->Q:[I

    aput v6, v14, v9

    add-int/lit8 v13, v13, 0x1

    .line 311
    invoke-direct {v0, v3, v13}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;I)V

    .line 312
    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v14, v14, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    add-int/lit8 v15, v13, -0x1

    aget-byte v14, v14, v15

    if-eqz v14, :cond_12

    const-wide/16 v16, 0x0

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v8, :cond_f

    rsub-int/lit8 v18, v14, 0x7

    shl-int v5, v7, v18

    .line 317
    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v11, v11, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    aget-byte v11, v11, v15

    and-int/2addr v11, v5

    if-eqz v11, :cond_e

    add-int/2addr v13, v14

    .line 320
    invoke-direct {v0, v3, v13}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;I)V

    .line 321
    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v11, v11, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    add-int/lit8 v16, v15, 0x1

    aget-byte v11, v11, v15

    and-int/2addr v11, v12

    not-int v5, v5

    and-int/2addr v5, v11

    int-to-long v6, v5

    move/from16 v5, v16

    move-wide/from16 v16, v6

    :goto_3
    if-ge v5, v13, :cond_d

    shl-long v6, v16, v8

    .line 324
    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v15, v15, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    add-int/lit8 v16, v5, 0x1

    aget-byte v5, v15, v5

    and-int/2addr v5, v12

    int-to-long v11, v5

    or-long v5, v6, v11

    const/16 v12, 0xff

    move-wide/from16 v19, v5

    move/from16 v5, v16

    move-wide/from16 v16, v19

    goto :goto_3

    :cond_d
    if-lez v9, :cond_f

    mul-int/lit8 v14, v14, 0x7

    add-int/lit8 v14, v14, 0x6

    const-wide/16 v5, 0x1

    shl-long v11, v5, v14

    sub-long/2addr v11, v5

    sub-long v16, v16, v11

    goto :goto_4

    :cond_e
    add-int/lit8 v14, v14, 0x1

    const/16 v5, 0xa3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x2

    const/16 v12, 0xff

    goto :goto_2

    :cond_f
    :goto_4
    move-wide/from16 v5, v16

    const-wide/32 v11, -0x80000000

    cmp-long v7, v5, v11

    if-ltz v7, :cond_11

    const-wide/32 v11, 0x7fffffff

    cmp-long v7, v5, v11

    if-gtz v7, :cond_11

    long-to-int v6, v5

    .line 331
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->Q:[I

    if-nez v9, :cond_10

    goto :goto_5

    :cond_10
    add-int/lit8 v7, v9, -0x1

    .line 332
    aget v7, v5, v7

    add-int/2addr v6, v7

    :goto_5
    aput v6, v5, v9

    .line 333
    aget v5, v5, v9

    add-int/2addr v10, v5

    add-int/lit8 v9, v9, 0x1

    const/16 v5, 0xa3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x2

    const/16 v12, 0xff

    goto/16 :goto_1

    .line 329
    :cond_11
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string v2, "EBML lacing sample size out of range."

    invoke-direct {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    :cond_12
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string v2, "No valid varint length mask found"

    invoke-direct {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    :cond_13
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->Q:[I

    const/4 v6, 0x1

    sub-int/2addr v14, v6

    iget v6, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->S:I

    sub-int/2addr v2, v6

    sub-int/2addr v2, v13

    sub-int/2addr v2, v10

    aput v2, v5, v14

    .line 338
    :goto_6
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v5, 0x0

    aget-byte v2, v2, v5

    shl-int/2addr v2, v8

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v2, v5

    .line 339
    iget-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->H:J

    int-to-long v9, v2

    invoke-direct {v0, v9, v10}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(J)J

    move-result-wide v9

    add-long/2addr v5, v9

    iput-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->M:J

    .line 340
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v5, 0x2

    aget-byte v2, v2, v5

    and-int/2addr v2, v8

    if-ne v2, v8, :cond_14

    const/4 v2, 0x1

    goto :goto_7

    :cond_14
    const/4 v2, 0x0

    .line 341
    :goto_7
    iget v6, v4, Lcom/google/vr/sdk/widgets/video/deps/do$b;->c:I

    if-eq v6, v5, :cond_16

    const/16 v6, 0xa3

    if-ne v1, v6, :cond_15

    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    aget-byte v6, v6, v5

    const/16 v5, 0x80

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_15

    goto :goto_8

    :cond_15
    const/4 v5, 0x0

    goto :goto_9

    :cond_16
    :goto_8
    const/4 v5, 0x1

    :goto_9
    if-eqz v2, :cond_17

    const/high16 v2, -0x80000000

    goto :goto_a

    :cond_17
    const/4 v2, 0x0

    :goto_a
    or-int/2addr v2, v5

    .line 343
    iput v2, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->T:I

    const/4 v2, 0x2

    .line 344
    iput v2, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->L:I

    const/4 v2, 0x0

    .line 345
    iput v2, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->O:I

    goto :goto_b

    .line 337
    :cond_18
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected lacing value: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :cond_19
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string v2, "Lacing only supported in SimpleBlocks."

    invoke-direct {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    :goto_b
    const/16 v2, 0xa3

    if-ne v1, v2, :cond_1c

    .line 347
    :goto_c
    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->O:I

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->P:I

    if-ge v1, v2, :cond_1b

    .line 348
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->Q:[I

    aget v1, v2, v1

    invoke-direct {v0, v3, v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/do$b;I)V

    .line 349
    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->M:J

    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->O:I

    iget v6, v4, Lcom/google/vr/sdk/widgets/video/deps/do$b;->d:I

    mul-int v5, v5, v6

    div-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    add-long/2addr v1, v5

    .line 350
    invoke-direct {v0, v4, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(Lcom/google/vr/sdk/widgets/video/deps/do$b;J)V

    .line 351
    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->O:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->O:I

    goto :goto_c

    :cond_1b
    const/4 v1, 0x0

    .line 353
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->L:I

    goto :goto_d

    :cond_1c
    const/4 v1, 0x0

    .line 354
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/do;->Q:[I

    aget v1, v2, v1

    invoke-direct {v0, v3, v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/do$b;I)V

    :goto_d
    return-void
.end method

.method a(IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    const/16 v0, 0x5031

    const/16 v1, 0x37

    const-string v2, " not supported"

    if-eq p1, v0, :cond_15

    const/16 v0, 0x5032

    const-wide/16 v3, 0x1

    if-eq p1, v0, :cond_13

    const/16 v0, 0x32

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x7

    const/4 v1, 0x6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 211
    :pswitch_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->v:I

    goto/16 :goto_0

    .line 209
    :pswitch_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->u:I

    goto/16 :goto_0

    .line 186
    :pswitch_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iput-boolean v7, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->q:Z

    long-to-int p1, p2

    if-eq p1, v7, :cond_2

    const/16 p2, 0x9

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iput v6, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->r:I

    goto/16 :goto_0

    .line 192
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iput v1, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->r:I

    goto/16 :goto_0

    .line 188
    :cond_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iput v7, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->r:I

    goto/16 :goto_0

    :pswitch_3
    long-to-int p1, p2

    if-eq p1, v7, :cond_5

    const/16 p2, 0x10

    if-eq p1, p2, :cond_4

    const/16 p2, 0x12

    if-eq p1, p2, :cond_3

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_5

    goto/16 :goto_0

    .line 200
    :cond_3
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iput v0, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->s:I

    goto/16 :goto_0

    .line 198
    :cond_4
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iput v1, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->s:I

    goto/16 :goto_0

    .line 196
    :cond_5
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iput v5, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->s:I

    goto/16 :goto_0

    :pswitch_4
    long-to-int p1, p2

    if-eq p1, v7, :cond_7

    if-eq p1, v6, :cond_6

    goto/16 :goto_0

    .line 206
    :cond_6
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iput v7, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->t:I

    goto/16 :goto_0

    .line 204
    :cond_7
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iput v6, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->t:I

    goto/16 :goto_0

    .line 124
    :sswitch_0
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->x:J

    goto/16 :goto_0

    .line 144
    :sswitch_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->d:I

    goto/16 :goto_0

    .line 152
    :sswitch_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->H:I

    goto/16 :goto_0

    .line 148
    :sswitch_3
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iput-wide p2, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->K:J

    goto/16 :goto_0

    .line 146
    :sswitch_4
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iput-wide p2, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->J:J

    goto/16 :goto_0

    .line 140
    :sswitch_5
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    cmp-long v0, p2, v3

    if-nez v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    iput-boolean v1, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->M:Z

    goto/16 :goto_0

    .line 132
    :sswitch_6
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->m:I

    goto/16 :goto_0

    .line 134
    :sswitch_7
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->n:I

    goto/16 :goto_0

    .line 130
    :sswitch_8
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->l:I

    goto/16 :goto_0

    :sswitch_9
    long-to-int p1, p2

    if-eqz p1, :cond_c

    if-eq p1, v7, :cond_b

    if-eq p1, v5, :cond_a

    const/16 p2, 0xf

    if-eq p1, p2, :cond_9

    goto/16 :goto_0

    .line 183
    :cond_9
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iput v5, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->p:I

    goto/16 :goto_0

    .line 181
    :cond_a
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iput v7, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->p:I

    goto/16 :goto_0

    .line 179
    :cond_b
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iput v6, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->p:I

    goto/16 :goto_0

    .line 177
    :cond_c
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iput v1, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->p:I

    goto/16 :goto_0

    .line 122
    :sswitch_a
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->w:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->D:J

    goto/16 :goto_0

    :sswitch_b
    cmp-long p1, p2, v3

    if-nez p1, :cond_d

    goto/16 :goto_0

    .line 165
    :cond_d
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const/16 v0, 0x38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "AESSettingsCipherMode "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_c
    const-wide/16 v0, 0x5

    cmp-long p1, p2, v0

    if-nez p1, :cond_e

    goto/16 :goto_0

    .line 163
    :cond_e
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const/16 v0, 0x31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ContentEncAlgo "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_d
    cmp-long p1, p2, v3

    if-nez p1, :cond_f

    goto/16 :goto_0

    .line 119
    :cond_f
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "EBMLReadVersion "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_e
    cmp-long p1, p2, v3

    if-ltz p1, :cond_10

    const-wide/16 v0, 0x2

    cmp-long p1, p2, v0

    if-gtz p1, :cond_10

    goto/16 :goto_0

    .line 121
    :cond_10
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const/16 v0, 0x35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "DocTypeReadVersion "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_f
    const-wide/16 v3, 0x3

    cmp-long p1, p2, v3

    if-nez p1, :cond_11

    goto/16 :goto_0

    .line 161
    :cond_11
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ContentCompAlgo "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1

    .line 154
    :sswitch_10
    iput-boolean v7, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->ae:Z

    goto/16 :goto_0

    .line 168
    :sswitch_11
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->K:Z

    if-nez p1, :cond_16

    .line 169
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->J:Lcom/google/vr/sdk/widgets/video/deps/oz;

    invoke-virtual {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/oz;->a(J)V

    .line 170
    iput-boolean v7, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->K:Z

    goto :goto_0

    .line 171
    :sswitch_12
    invoke-direct {p0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->H:J

    goto :goto_0

    .line 136
    :sswitch_13
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->b:I

    goto :goto_0

    .line 128
    :sswitch_14
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->k:I

    goto :goto_0

    .line 166
    :sswitch_15
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->I:Lcom/google/vr/sdk/widgets/video/deps/oz;

    invoke-direct {p0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/oz;->a(J)V

    goto :goto_0

    .line 126
    :sswitch_16
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->j:I

    goto :goto_0

    .line 150
    :sswitch_17
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->G:I

    goto :goto_0

    .line 173
    :sswitch_18
    invoke-direct {p0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->N:J

    goto :goto_0

    .line 138
    :sswitch_19
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    cmp-long v0, p2, v3

    if-nez v0, :cond_12

    const/4 v1, 0x1

    :cond_12
    iput-boolean v1, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->N:Z

    goto :goto_0

    .line 142
    :sswitch_1a
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->c:I

    goto :goto_0

    :cond_13
    cmp-long p1, p2, v3

    if-nez p1, :cond_14

    goto :goto_0

    .line 159
    :cond_14
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingScope "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    const-wide/16 v3, 0x0

    cmp-long p1, p2, v3

    if-nez p1, :cond_17

    :cond_16
    :goto_0
    return-void

    .line 157
    :cond_17
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingOrder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_1a
        0x88 -> :sswitch_19
        0x9b -> :sswitch_18
        0x9f -> :sswitch_17
        0xb0 -> :sswitch_16
        0xb3 -> :sswitch_15
        0xba -> :sswitch_14
        0xd7 -> :sswitch_13
        0xe7 -> :sswitch_12
        0xf1 -> :sswitch_11
        0xfb -> :sswitch_10
        0x4254 -> :sswitch_f
        0x4285 -> :sswitch_e
        0x42f7 -> :sswitch_d
        0x47e1 -> :sswitch_c
        0x47e8 -> :sswitch_b
        0x53ac -> :sswitch_a
        0x53b8 -> :sswitch_9
        0x54b0 -> :sswitch_8
        0x54b2 -> :sswitch_7
        0x54ba -> :sswitch_6
        0x55aa -> :sswitch_5
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_3
        0x6264 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(IJJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    const/16 v0, 0xa0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_b

    const/16 v0, 0xae

    if-eq p1, v0, :cond_a

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_9

    const/16 v0, 0x4dbb

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x5035

    const/4 v3, 0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0x55d0

    if-eq p1, v0, :cond_6

    const v0, 0x18538067

    if-eq p1, v0, :cond_3

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_2

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    .line 67
    :cond_0
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->B:Z

    if-nez p1, :cond_c

    .line 68
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->k:Z

    if-eqz p1, :cond_1

    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->F:J

    cmp-long p3, p1, v1

    if-eqz p3, :cond_1

    .line 69
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->E:Z

    goto :goto_1

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->af:Lcom/google/vr/sdk/widgets/video/deps/ct;

    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/da$b;

    iget-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->z:J

    invoke-direct {p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/da$b;-><init>(J)V

    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(Lcom/google/vr/sdk/widgets/video/deps/da;)V

    .line 71
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->B:Z

    goto :goto_1

    .line 62
    :cond_2
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/oz;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/oz;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->I:Lcom/google/vr/sdk/widgets/video/deps/oz;

    .line 63
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/oz;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/oz;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->J:Lcom/google/vr/sdk/widgets/video/deps/oz;

    goto :goto_1

    .line 54
    :cond_3
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->w:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_5

    cmp-long p1, v3, p2

    if-nez p1, :cond_4

    goto :goto_0

    .line 55
    :cond_4
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string p2, "Multiple Segment elements not supported"

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_5
    :goto_0
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->w:J

    .line 57
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->v:J

    goto :goto_1

    .line 79
    :cond_6
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iput-boolean v3, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->q:Z

    goto :goto_1

    .line 75
    :cond_7
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iput-boolean v3, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->e:Z

    goto :goto_1

    :cond_8
    const/4 p1, -0x1

    .line 59
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->C:I

    .line 60
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->D:J

    goto :goto_1

    .line 65
    :cond_9
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->K:Z

    goto :goto_1

    .line 77
    :cond_a
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/do$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/do$1;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    goto :goto_1

    .line 72
    :cond_b
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->ae:Z

    :cond_c
    :goto_1
    return-void
.end method

.method a(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    const/16 v0, 0x86

    if-eq p1, v0, :cond_3

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_1

    const v0, 0x22b59c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/do$b;->a(Lcom/google/vr/sdk/widgets/video/deps/do$b;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "webm"

    .line 241
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "matroska"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 242
    :cond_2
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "DocType "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1

    .line 243
    :cond_3
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->A:Lcom/google/vr/sdk/widgets/video/deps/do$b;

    iput-object p2, p1, Lcom/google/vr/sdk/widgets/video/deps/do$b;->a:Ljava/lang/String;

    :cond_4
    :goto_0
    return-void
.end method

.method public a(JJ)V
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 31
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->H:J

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->L:I

    .line 33
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->h:Lcom/google/vr/sdk/widgets/video/deps/dm;

    invoke-interface {p2}, Lcom/google/vr/sdk/widgets/video/deps/dm;->a()V

    .line 34
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->i:Lcom/google/vr/sdk/widgets/video/deps/dr;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/dr;->a()V

    .line 35
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/do;->e()V

    .line 36
    :goto_0
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->j:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 37
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->j:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/do$b;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/do$b;->b()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ct;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do;->af:Lcom/google/vr/sdk/widgets/video/deps/ct;

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/dq;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/dq;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dq;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 0

    return-void
.end method
