.class public final Lcom/google/ads/interactivemedia/v3/internal/jt;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ih;


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[B

.field private static final d:Ljava/util/UUID;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:I

.field private B:J

.field private C:Z

.field private D:J

.field private E:J

.field private F:J

.field private G:Lcom/google/ads/interactivemedia/v3/internal/abi;

.field private H:Lcom/google/ads/interactivemedia/v3/internal/abi;

.field private I:Z

.field private J:Z

.field private K:I

.field private L:J

.field private M:J

.field private N:I

.field private O:I

.field private P:[I

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:Z

.field private V:I

.field private W:I

.field private X:I

.field private Y:Z

.field private Z:Z

.field private aa:Z

.field private ab:I

.field private ac:B

.field private ad:Z

.field private ae:Lcom/google/ads/interactivemedia/v3/internal/ii;

.field private final af:Lcom/google/ads/interactivemedia/v3/internal/jo;

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/jv;

.field private final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/ads/interactivemedia/v3/internal/jr;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Z

.field private final i:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final j:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final k:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final l:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final m:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final n:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final o:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final p:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final q:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final r:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private s:Ljava/nio/ByteBuffer;

.field private t:J

.field private u:J

.field private v:J

.field private w:J

.field private x:J

.field private y:Lcom/google/ads/interactivemedia/v3/internal/jr;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/jt;->a:[B

    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    .line 1
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->c(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/jt;->b:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/jt;->c:[B

    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    .line 2
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/jt;->d:Ljava/util/UUID;

    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-000"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5a

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-090"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb4

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-180"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10e

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-270"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/jt;->e:Ljava/util/Map;

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
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/jt;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/jo;

    .line 10
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/jo;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->u:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->v:J

    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->w:J

    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->x:J

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->D:J

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->E:J

    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->F:J

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->af:Lcom/google/ads/interactivemedia/v3/internal/jo;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/jq;

    .line 11
    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/jq;-><init>(Lcom/google/ads/interactivemedia/v3/internal/jt;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/jo;->a(Lcom/google/ads/interactivemedia/v3/internal/jp;)V

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->h:Z

    .line 12
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/jv;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/jv;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->f:Lcom/google/ads/interactivemedia/v3/internal/jv;

    new-instance p1, Landroid/util/SparseArray;

    .line 13
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->g:Landroid/util/SparseArray;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v1, 0x4

    .line 14
    invoke-direct {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 15
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>([B)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->l:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 16
    invoke-direct {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->m:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 17
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/abp;->a:[B

    invoke-direct {p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>([B)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->i:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 18
    invoke-direct {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->j:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 19
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->n:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 20
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->o:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/16 v1, 0x8

    .line 21
    invoke-direct {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->p:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 22
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->q:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 23
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->r:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-array p1, v0, [I

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->P:[I

    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/ix;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->n:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 284
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 285
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->n:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 286
    invoke-interface {p2, p3, p1}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 287
    invoke-interface {p2, p1, p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/zl;IZ)I

    move-result p1

    :goto_0
    return p1
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/jr;I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p2, Lcom/google/ads/interactivemedia/v3/internal/jr;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    .line 215
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/jt;->a:[B

    .line 216
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;[BI)V

    .line 217
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/jt;->e()I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p2, Lcom/google/ads/interactivemedia/v3/internal/jr;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    .line 218
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/jt;->c:[B

    .line 219
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;[BI)V

    .line 220
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/jt;->e()I

    move-result p1

    return p1

    :cond_1
    iget-object v0, p2, Lcom/google/ads/interactivemedia/v3/internal/jr;->U:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->Y:Z

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_f

    iget-boolean v1, p2, Lcom/google/ads/interactivemedia/v3/internal/jr;->g:Z

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->S:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v1, v6

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->S:I

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->Z:Z

    const/16 v6, 0x80

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 221
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v1

    invoke-virtual {p1, v1, v5, v4}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->V:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->V:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 222
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v1

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    if-eq v1, v6, :cond_2

    .line 223
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 224
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v1

    aget-byte v1, v1, v5

    iput-byte v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->ac:B

    iput-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->Z:Z

    goto :goto_0

    .line 222
    :cond_2
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string p2, "Extension bit is set in signal byte"

    .line 223
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1

    .line 224
    :cond_3
    :goto_0
    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->ac:B

    and-int/lit8 v7, v1, 0x1

    if-ne v7, v4, :cond_d

    and-int/2addr v1, v2

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->S:I

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v7, v8

    iput v7, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->S:I

    iget-boolean v7, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->ad:Z

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->p:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 225
    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {p1, v7, v5, v8}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->V:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->V:I

    iput-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->ad:Z

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 226
    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v7

    if-ne v1, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    or-int/2addr v6, v8

    int-to-byte v6, v6

    .line 227
    aput-byte v6, v7, v5

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 228
    invoke-virtual {v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 229
    invoke-interface {v0, v6, v4}, Lcom/google/ads/interactivemedia/v3/internal/ix;->b(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->W:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->W:I

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->p:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 230
    invoke-virtual {v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->p:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 231
    invoke-interface {v0, v6, v8}, Lcom/google/ads/interactivemedia/v3/internal/ix;->b(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->W:I

    add-int/2addr v6, v8

    iput v6, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->W:I

    :cond_5
    if-ne v1, v2, :cond_d

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->aa:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 232
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v1

    invoke-virtual {p1, v1, v5, v4}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->V:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->V:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 233
    invoke-virtual {v1, v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 234
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->ab:I

    iput-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->aa:Z

    :cond_6
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->ab:I

    mul-int/lit8 v1, v1, 0x4

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 235
    invoke-virtual {v6, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 236
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v6

    invoke-virtual {p1, v6, v5, v1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->V:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->V:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->ab:I

    shr-int/2addr v1, v4

    add-int/2addr v1, v4

    mul-int/lit8 v6, v1, 0x6

    add-int/2addr v6, v2

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->s:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_7

    .line 237
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    if-ge v7, v6, :cond_8

    .line 238
    :cond_7
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->s:Ljava/nio/ByteBuffer;

    :cond_8
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->s:Ljava/nio/ByteBuffer;

    .line 239
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->s:Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    .line 240
    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_2
    iget v8, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->ab:I

    if-ge v1, v8, :cond_a

    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 241
    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/abr;->t()I

    move-result v8

    rem-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->s:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    int-to-short v7, v7

    .line 242
    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_9
    iget-object v9, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->s:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    .line 243
    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v7, v8

    goto :goto_2

    :cond_a
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->V:I

    sub-int v1, p3, v1

    sub-int/2addr v1, v7

    and-int/lit8 v7, v8, 0x1

    if-ne v7, v4, :cond_b

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->s:Ljava/nio/ByteBuffer;

    .line 244
    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 272
    :cond_b
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->s:Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    .line 245
    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->s:Ljava/nio/ByteBuffer;

    .line 246
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 244
    :goto_4
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->q:Lcom/google/ads/interactivemedia/v3/internal/abr;

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->s:Ljava/nio/ByteBuffer;

    .line 247
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BI)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->q:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 248
    invoke-interface {v0, v1, v6}, Lcom/google/ads/interactivemedia/v3/internal/ix;->b(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->W:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->W:I

    goto :goto_5

    .line 246
    :cond_c
    iget-object v1, p2, Lcom/google/ads/interactivemedia/v3/internal/jr;->h:[B

    if-eqz v1, :cond_d

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->n:Lcom/google/ads/interactivemedia/v3/internal/abr;

    array-length v7, v1

    .line 249
    invoke-virtual {v6, v1, v7}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BI)V

    .line 248
    :cond_d
    :goto_5
    iget v1, p2, Lcom/google/ads/interactivemedia/v3/internal/jr;->f:I

    if-lez v1, :cond_e

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->S:I

    const/high16 v6, 0x10000000

    or-int/2addr v1, v6

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->S:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->r:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 250
    invoke-virtual {v1, v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 251
    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 252
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v1

    shr-int/lit8 v6, p3, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 253
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v1

    shr-int/lit8 v6, p3, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 254
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v1

    shr-int/lit8 v6, p3, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 255
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v1

    const/4 v6, 0x3

    and-int/lit16 v7, p3, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 256
    invoke-interface {v0, v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/ix;->b(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->W:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->W:I

    :cond_e
    iput-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->Y:Z

    :cond_f
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->n:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 257
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v1

    add-int/2addr p3, v1

    iget-object v1, p2, Lcom/google/ads/interactivemedia/v3/internal/jr;->b:Ljava/lang/String;

    const-string v6, "V_MPEG4/ISO/AVC"

    .line 258
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p2, Lcom/google/ads/interactivemedia/v3/internal/jr;->b:Ljava/lang/String;

    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_8

    .line 277
    :cond_10
    iget-object v1, p2, Lcom/google/ads/interactivemedia/v3/internal/jr;->R:Lcom/google/ads/interactivemedia/v3/internal/js;

    if-nez v1, :cond_11

    goto :goto_7

    .line 273
    :cond_11
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->n:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 271
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v1

    if-nez v1, :cond_12

    goto :goto_6

    :cond_12
    const/4 v4, 0x0

    :goto_6
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iget-object v1, p2, Lcom/google/ads/interactivemedia/v3/internal/jr;->R:Lcom/google/ads/interactivemedia/v3/internal/js;

    .line 272
    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/js;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;)V

    .line 277
    :goto_7
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->V:I

    if-ge v1, p3, :cond_16

    sub-int v1, p3, v1

    .line 273
    invoke-direct {p0, p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/ix;I)I

    move-result v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->V:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->V:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->W:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->W:I

    goto :goto_7

    .line 258
    :cond_13
    :goto_8
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->j:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 259
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v1

    .line 260
    aput-byte v5, v1, v5

    .line 261
    aput-byte v5, v1, v4

    .line 262
    aput-byte v5, v1, v2

    iget v2, p2, Lcom/google/ads/interactivemedia/v3/internal/jr;->V:I

    rsub-int/lit8 v4, v2, 0x4

    :goto_9
    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->V:I

    if-ge v6, p3, :cond_16

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->X:I

    if-nez v6, :cond_15

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->n:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 263
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v7, v4, v6

    sub-int v8, v2, v6

    .line 264
    invoke-virtual {p1, v1, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    if-lez v6, :cond_14

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->n:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 265
    invoke-virtual {v7, v1, v4, v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    :cond_14
    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->V:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->V:I

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->j:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 266
    invoke-virtual {v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->j:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 267
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->t()I

    move-result v6

    iput v6, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->X:I

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->i:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 268
    invoke-virtual {v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->i:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 269
    invoke-interface {v0, v6, v3}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->W:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->W:I

    goto :goto_9

    .line 270
    :cond_15
    invoke-direct {p0, p1, v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/ix;I)I

    move-result v6

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->V:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->V:I

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->W:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->W:I

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->X:I

    sub-int/2addr v7, v6

    iput v7, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->X:I

    goto :goto_9

    :cond_16
    iget-object p1, p2, Lcom/google/ads/interactivemedia/v3/internal/jr;->b:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    .line 274
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->l:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 275
    invoke-virtual {p1, v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->l:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 276
    invoke-interface {v0, p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->W:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->W:I

    .line 277
    :cond_17
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/jt;->e()I

    move-result p1

    return p1
.end method

.method private final a(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/dt;
        }
    .end annotation

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->v:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    .line 199
    invoke-static/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b(JJJ)J

    move-result-wide p1

    return-wide p1

    .line 0
    :cond_0
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string p2, "Can\'t scale timecode prior to timecodeScale being set."

    .line 198
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jt;->e:Ljava/util/Map;

    return-object v0
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/ie;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 190
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v0

    if-lt v0, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 191
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->e()I

    move-result v0

    if-ge v0, p2, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 192
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v2, v2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 193
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v2

    .line 194
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BI)V

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 195
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 196
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b(I)V

    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/ie;[BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    array-length v0, p2

    add-int v1, v0, p3

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->o:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 279
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->e()I

    move-result v2

    if-ge v2, v1, :cond_0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->o:Lcom/google/ads/interactivemedia/v3/internal/abr;

    add-int v3, v1, p3

    .line 280
    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([B)V

    goto :goto_0

    .line 283
    :cond_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->o:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 281
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p2, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    :goto_0
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->o:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 282
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object p2

    invoke-virtual {p1, p2, v0, p3}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->o:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 283
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/jr;JIII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 82
    iget-object v1, v2, Lcom/google/ads/interactivemedia/v3/internal/jr;->R:Lcom/google/ads/interactivemedia/v3/internal/js;

    const/4 v8, 0x1

    if-eqz v1, :cond_0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 83
    invoke-virtual/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/js;->a(Lcom/google/ads/interactivemedia/v3/internal/jr;JIII)V

    goto/16 :goto_6

    .line 84
    :cond_0
    iget-object v1, v2, Lcom/google/ads/interactivemedia/v3/internal/jr;->b:Ljava/lang/String;

    const-string v3, "S_TEXT/UTF8"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "S_TEXT/ASS"

    if-nez v1, :cond_1

    iget-object v1, v2, Lcom/google/ads/interactivemedia/v3/internal/jr;->b:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/jt;->O:I

    const-string v5, "MatroskaExtractor"

    if-le v1, v8, :cond_2

    const-string v1, "Skipping subtitle sample in laced block."

    .line 85
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :cond_2
    iget-wide v6, v0, Lcom/google/ads/interactivemedia/v3/internal/jt;->M:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v6, v9

    if-nez v1, :cond_4

    const-string v1, "Skipping subtitle sample with no duration."

    .line 86
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    move/from16 v1, p5

    goto :goto_4

    .line 87
    :cond_4
    iget-object v1, v2, Lcom/google/ads/interactivemedia/v3/internal/jr;->b:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/jt;->o:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v5

    .line 88
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, 0x2c0618eb

    const/4 v11, 0x0

    if-eq v9, v10, :cond_6

    const v4, 0x54c61e47

    if-eq v9, v4, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v1, -0x1

    :goto_2
    if-eqz v1, :cond_9

    if-ne v1, v8, :cond_8

    const-wide/16 v3, 0x2710

    const-string v1, "%01d:%02d:%02d:%02d"

    .line 89
    invoke-static {v6, v7, v1, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a(JLjava/lang/String;J)[B

    move-result-object v1

    const/16 v3, 0x15

    goto :goto_3

    .line 88
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 97
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_9
    const-wide/16 v3, 0x3e8

    const-string v1, "%02d:%02d:%02d,%03d"

    .line 90
    invoke-static {v6, v7, v1, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a(JLjava/lang/String;J)[B

    move-result-object v1

    const/16 v3, 0x13

    .line 91
    :goto_3
    array-length v4, v1

    invoke-static {v1, v11, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iget-object v1, v2, Lcom/google/ads/interactivemedia/v3/internal/jr;->U:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/jt;->o:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/jt;->o:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 93
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v1

    add-int v1, p5, v1

    :goto_4
    const/high16 v3, 0x10000000

    and-int v3, p4, v3

    if-eqz v3, :cond_b

    .line 85
    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/jt;->O:I

    if-le v3, v8, :cond_a

    const v3, -0x10000001

    and-int v3, p4, v3

    move v13, v1

    move v12, v3

    goto :goto_5

    .line 96
    :cond_a
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/jt;->r:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 94
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v3

    .line 95
    iget-object v4, v2, Lcom/google/ads/interactivemedia/v3/internal/jr;->U:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/jt;->r:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-interface {v4, v5, v3}, Lcom/google/ads/interactivemedia/v3/internal/ix;->b(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    add-int/2addr v1, v3

    :cond_b
    move/from16 v12, p4

    move v13, v1

    .line 96
    :goto_5
    iget-object v9, v2, Lcom/google/ads/interactivemedia/v3/internal/jr;->U:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-object v15, v2, Lcom/google/ads/interactivemedia/v3/internal/jr;->i:Lcom/google/ads/interactivemedia/v3/internal/iw;

    move-wide/from16 v10, p2

    move/from16 v14, p6

    invoke-interface/range {v9 .. v15}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V

    .line 83
    :goto_6
    iput-boolean v8, v0, Lcom/google/ads/interactivemedia/v3/internal/jt;->J:Z

    return-void
.end method

.method private static a(JLjava/lang/String;J)[B
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p0, v2

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 171
    :goto_0
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    const-wide v2, 0xd693a400L

    div-long v2, p0, v2

    long-to-int v3, v2

    mul-int/lit16 v2, v3, 0xe10

    int-to-long v4, v2

    const-wide/32 v6, 0xf4240

    mul-long v4, v4, v6

    sub-long/2addr p0, v4

    const-wide/32 v4, 0x3938700

    div-long v4, p0, v4

    long-to-int v2, v4

    mul-int/lit8 v4, v2, 0x3c

    int-to-long v4, v4

    mul-long v4, v4, v6

    sub-long/2addr p0, v4

    div-long v4, p0, v6

    long-to-int v5, v4

    int-to-long v8, v5

    mul-long v8, v8, v6

    sub-long/2addr p0, v8

    div-long/2addr p0, p3

    .line 172
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 p4, 0x4

    new-array p4, p4, [Ljava/lang/Object;

    .line 173
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p4, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p4, v0

    const/4 v0, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p4, v0

    const/4 v0, 0x3

    long-to-int p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p4, v0

    invoke-static {p3, p2, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 174
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->c(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static a([II)[I
    .locals 1

    if-nez p0, :cond_0

    new-array p0, p1, [I

    return-object p0

    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    return-object p0

    :cond_1
    add-int/2addr v0, v0

    .line 169
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method

.method static synthetic b()[B
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jt;->b:[B

    return-object v0
.end method

.method static synthetic d()Ljava/util/UUID;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jt;->d:Ljava/util/UUID;

    return-object v0
.end method

.method private final e()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->W:I

    .line 170
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/jt;->f()V

    return v0
.end method

.method private final f()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->V:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->W:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->X:I

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->Y:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->Z:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->aa:Z

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->ab:I

    iput-byte v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->ac:B

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->ad:Z

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->n:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 197
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/ir;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->J:Z

    :cond_0
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->J:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->af:Lcom/google/ads/interactivemedia/v3/internal/jo;

    .line 186
    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/jo;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v1

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->C:Z

    if-eqz v3, :cond_1

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->E:J

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->D:J

    iput-wide v1, p2, Lcom/google/ads/interactivemedia/v3/internal/ir;->a:J

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->C:Z

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->z:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->E:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iput-wide v1, p2, Lcom/google/ads/interactivemedia/v3/internal/ir;->a:J

    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->E:J

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->g:Landroid/util/SparseArray;

    .line 187
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_4

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->g:Landroid/util/SparseArray;

    .line 188
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/jr;

    iget-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->R:Lcom/google/ads/interactivemedia/v3/internal/js;

    if-eqz p2, :cond_3

    .line 189
    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/js;->a(Lcom/google/ads/interactivemedia/v3/internal/jr;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, -0x1

    return p1

    :cond_5
    return v0
.end method

.method protected final a(I)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/dt;
        }
    .end annotation

    const/16 v0, 0xa0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_14

    const/16 v0, 0xae

    const/4 v3, 0x0

    if-eq p1, v0, :cond_11

    const/16 v0, 0x4dbb

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    const v7, 0x1c53bb6b

    if-eq p1, v0, :cond_e

    const/16 v0, 0x6240

    if-eq p1, v0, :cond_c

    const/16 v0, 0x6d80

    if-eq p1, v0, :cond_a

    const v0, 0x1549a966

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-eq p1, v0, :cond_8

    const v0, 0x1654ae6b

    if-eq p1, v0, :cond_6

    if-eq p1, v7, :cond_0

    goto/16 :goto_4

    .line 163
    :cond_0
    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->z:Z

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->ae:Lcom/google/ads/interactivemedia/v3/internal/ii;

    iget-wide v10, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->u:J

    cmp-long v0, v10, v4

    if-eqz v0, :cond_5

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->x:J

    cmp-long v0, v4, v8

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->G:Lcom/google/ads/interactivemedia/v3/internal/abi;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abi;->a()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->H:Lcom/google/ads/interactivemedia/v3/internal/abi;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abi;->a()I

    move-result v0

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->G:Lcom/google/ads/interactivemedia/v3/internal/abi;

    .line 98
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/abi;->a()I

    move-result v4

    if-eq v0, v4, :cond_1

    goto/16 :goto_2

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->G:Lcom/google/ads/interactivemedia/v3/internal/abi;

    .line 100
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abi;->a()I

    move-result v0

    .line 101
    new-array v4, v0, [I

    .line 102
    new-array v5, v0, [J

    .line 103
    new-array v7, v0, [J

    .line 104
    new-array v8, v0, [J

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v0, :cond_2

    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->G:Lcom/google/ads/interactivemedia/v3/internal/abi;

    .line 105
    invoke-virtual {v10, v9}, Lcom/google/ads/interactivemedia/v3/internal/abi;->a(I)J

    move-result-wide v10

    aput-wide v10, v8, v9

    iget-wide v10, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->u:J

    iget-object v12, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->H:Lcom/google/ads/interactivemedia/v3/internal/abi;

    .line 106
    invoke-virtual {v12, v9}, Lcom/google/ads/interactivemedia/v3/internal/abi;->a(I)J

    move-result-wide v12

    add-long/2addr v10, v12

    aput-wide v10, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v9, v0, -0x1

    if-ge v2, v9, :cond_3

    add-int/lit8 v9, v2, 0x1

    .line 107
    aget-wide v10, v5, v9

    aget-wide v12, v5, v2

    sub-long/2addr v10, v12

    long-to-int v11, v10

    aput v11, v4, v2

    .line 108
    aget-wide v10, v8, v9

    aget-wide v12, v8, v2

    sub-long/2addr v10, v12

    aput-wide v10, v7, v2

    move v2, v9

    goto :goto_1

    :cond_3
    iget-wide v10, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->u:J

    iget-wide v12, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->t:J

    add-long/2addr v10, v12

    .line 109
    aget-wide v12, v5, v9

    sub-long/2addr v10, v12

    long-to-int v0, v10

    aput v0, v4, v9

    iget-wide v10, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->x:J

    .line 110
    aget-wide v12, v8, v9

    sub-long/2addr v10, v12

    aput-wide v10, v7, v9

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-gtz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x48

    .line 111
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Discarding last cue point with unexpected duration: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MatroskaExtractor"

    .line 112
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {v4, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    .line 114
    invoke-static {v5, v9}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    .line 115
    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    .line 116
    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v8

    :cond_4
    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->G:Lcom/google/ads/interactivemedia/v3/internal/abi;

    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->H:Lcom/google/ads/interactivemedia/v3/internal/abi;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ic;

    .line 117
    invoke-direct {v0, v4, v5, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/ic;-><init>([I[J[J[J)V

    goto :goto_3

    .line 98
    :cond_5
    :goto_2
    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->G:Lcom/google/ads/interactivemedia/v3/internal/abi;

    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->H:Lcom/google/ads/interactivemedia/v3/internal/abi;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/it;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->x:J

    .line 99
    invoke-direct {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/it;-><init>(J)V

    .line 118
    :goto_3
    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(Lcom/google/ads/interactivemedia/v3/internal/iu;)V

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->z:Z

    return-void

    .line 117
    :cond_6
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->g:Landroid/util/SparseArray;

    .line 119
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_7

    .line 120
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->ae:Lcom/google/ads/interactivemedia/v3/internal/ii;

    .line 121
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->w()V

    return-void

    .line 119
    :cond_7
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v0, "No valid tracks were found"

    .line 120
    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_8
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->v:J

    cmp-long p1, v0, v8

    if-nez p1, :cond_9

    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->v:J

    :cond_9
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->w:J

    cmp-long p1, v0, v8

    if-eqz p1, :cond_f

    .line 122
    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->x:J

    return-void

    :cond_a
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    .line 123
    iget-boolean v0, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->g:Z

    if-eqz v0, :cond_f

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->h:[B

    if-nez p1, :cond_b

    goto :goto_4

    :cond_b
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v0, "Combining encryption and compression is not supported"

    .line 124
    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    .line 125
    iget-boolean v0, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->g:Z

    if-eqz v0, :cond_f

    .line 126
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->i:Lcom/google/ads/interactivemedia/v3/internal/iw;

    if-eqz v0, :cond_d

    .line 127
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/hk;

    new-array v1, v1, [Lcom/google/ads/interactivemedia/v3/internal/hj;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/hj;

    .line 128
    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/bk;->a:Ljava/util/UUID;

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    iget-object v6, v6, Lcom/google/ads/interactivemedia/v3/internal/jr;->i:Lcom/google/ads/interactivemedia/v3/internal/iw;

    iget-object v6, v6, Lcom/google/ads/interactivemedia/v3/internal/iw;->b:[B

    const-string v7, "video/webm"

    invoke-direct {v4, v5, v7, v6}, Lcom/google/ads/interactivemedia/v3/internal/hj;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v4, v1, v2

    .line 129
    invoke-direct {v0, v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/hk;-><init>(Ljava/lang/String;[Lcom/google/ads/interactivemedia/v3/internal/hj;)V

    iput-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->k:Lcom/google/ads/interactivemedia/v3/internal/hk;

    return-void

    .line 126
    :cond_d
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    .line 127
    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_e
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->A:I

    if-eq p1, v6, :cond_10

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->B:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_10

    if-ne p1, v7, :cond_f

    .line 130
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->D:J

    :cond_f
    :goto_4
    return-void

    .line 129
    :cond_10
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    .line 130
    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1

    .line 0
    :cond_11
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    .line 131
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->b:Ljava/lang/String;

    const-string v0, "V_VP8"

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "V_VP9"

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "V_AV1"

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "V_MPEG2"

    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "V_MPEG4/ISO/SP"

    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "V_MPEG4/ISO/ASP"

    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "V_MPEG4/ISO/AP"

    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "V_MPEG4/ISO/AVC"

    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "V_MPEGH/ISO/HEVC"

    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "V_MS/VFW/FOURCC"

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "V_THEORA"

    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "A_OPUS"

    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "A_VORBIS"

    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "A_AAC"

    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "A_MPEG/L2"

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "A_MPEG/L3"

    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "A_AC3"

    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "A_EAC3"

    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "A_TRUEHD"

    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "A_DTS"

    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "A_DTS/EXPRESS"

    .line 152
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "A_DTS/LOSSLESS"

    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "A_FLAC"

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "A_MS/ACM"

    .line 155
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "A_PCM/INT/LIT"

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "S_TEXT/UTF8"

    .line 157
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "S_TEXT/ASS"

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "S_VOBSUB"

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "S_HDMV/PGS"

    .line 160
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "S_DVBSUB"

    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    :cond_12
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->ae:Lcom/google/ads/interactivemedia/v3/internal/ii;

    .line 162
    iget v1, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/jr;->a(Lcom/google/ads/interactivemedia/v3/internal/ii;I)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->g:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    .line 163
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/jr;->c:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_13
    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    return-void

    .line 130
    :cond_14
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->K:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_19

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_5
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->O:I

    if-ge p1, v3, :cond_15

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->P:[I

    .line 164
    aget v3, v3, p1

    add-int/2addr v0, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_15
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->g:Landroid/util/SparseArray;

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->Q:I

    .line 165
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/jr;

    const/4 v3, 0x0

    :goto_6
    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->O:I

    if-ge v3, v4, :cond_18

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->L:J

    .line 166
    iget v6, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->e:I

    mul-int v6, v6, v3

    div-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long v5, v4, v6

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->S:I

    if-nez v3, :cond_17

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->U:Z

    if-nez v3, :cond_16

    or-int/lit8 v3, v4, 0x1

    move v7, v3

    goto :goto_7

    :cond_16
    move v7, v4

    :goto_7
    const/4 v10, 0x0

    goto :goto_8

    :cond_17
    move v10, v3

    move v7, v4

    :goto_8
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->P:[I

    .line 167
    aget v8, v3, v10

    sub-int/2addr v0, v8

    move-object v3, p0

    move-object v4, p1

    move v9, v0

    .line 168
    invoke-direct/range {v3 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a(Lcom/google/ads/interactivemedia/v3/internal/jr;JIII)V

    add-int/lit8 v3, v10, 0x1

    goto :goto_6

    :cond_18
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->K:I

    :cond_19
    return-void
.end method

.method protected final a(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/dt;
        }
    .end annotation

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->t:F

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->s:F

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->r:F

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->L:F

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->K:F

    return-void

    :pswitch_5
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->J:F

    return-void

    :pswitch_6
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->I:F

    return-void

    :pswitch_7
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->H:F

    return-void

    :pswitch_8
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->G:F

    return-void

    :pswitch_9
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->F:F

    return-void

    :pswitch_a
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->E:F

    return-void

    :pswitch_b
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->D:F

    return-void

    :pswitch_c
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->C:F

    return-void

    :cond_0
    double-to-long p1, p2

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->w:J

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    double-to-int p2, p2

    iput p2, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->O:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x55d1
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7673
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(IILcom/google/ads/interactivemedia/v3/internal/ie;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v8, p3

    const/16 v2, 0xa1

    const/4 v3, 0x4

    const/16 v4, 0xa3

    const/4 v5, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v0, v2, :cond_8

    if-eq v0, v4, :cond_8

    const/16 v2, 0xa5

    if-eq v0, v2, :cond_5

    const/16 v2, 0x4255

    if-eq v0, v2, :cond_4

    const/16 v2, 0x47e2

    if-eq v0, v2, :cond_3

    const/16 v2, 0x53ab

    if-eq v0, v2, :cond_2

    const/16 v2, 0x63a2

    if-eq v0, v2, :cond_1

    const/16 v2, 0x7672

    if-ne v0, v2, :cond_0

    .line 31
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    .line 24
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jr;->u:[B

    .line 25
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/jr;->u:[B

    invoke-virtual {v8, v0, v10, v1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    return-void

    .line 71
    :cond_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1a

    .line 81
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_1
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    .line 26
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jr;->j:[B

    .line 27
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/jr;->j:[B

    invoke-virtual {v8, v0, v10, v1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    return-void

    .line 0
    :cond_2
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->m:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 28
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    invoke-static {v0, v10}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->m:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 29
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    rsub-int/lit8 v2, v1, 0x4

    invoke-virtual {v8, v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->m:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 30
    invoke-virtual {v0, v10}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->m:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 31
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->A:I

    return-void

    .line 32
    :cond_3
    new-array v0, v1, [B

    .line 33
    invoke-virtual {v8, v0, v10, v1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/iw;

    .line 34
    invoke-direct {v2, v9, v0, v10, v10}, Lcom/google/ads/interactivemedia/v3/internal/iw;-><init>(I[BII)V

    iput-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/jr;->i:Lcom/google/ads/interactivemedia/v3/internal/iw;

    return-void

    :cond_4
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    .line 35
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jr;->h:[B

    .line 36
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/jr;->h:[B

    invoke-virtual {v8, v0, v10, v1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    return-void

    .line 72
    :cond_5
    iget v0, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->K:I

    if-eq v0, v5, :cond_6

    return-void

    :cond_6
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->g:Landroid/util/SparseArray;

    iget v2, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->Q:I

    .line 37
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/jr;

    iget v2, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->T:I

    if-ne v2, v3, :cond_7

    .line 38
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/jr;->b:Ljava/lang/String;

    const-string v2, "V_VP9"

    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->r:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 41
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->r:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 42
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    invoke-virtual {v8, v0, v10, v1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    return-void

    .line 40
    :cond_7
    invoke-virtual {v8, v1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    return-void

    .line 36
    :cond_8
    iget v2, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->K:I

    const/16 v6, 0x8

    if-nez v2, :cond_9

    iget-object v2, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->f:Lcom/google/ads/interactivemedia/v3/internal/jv;

    .line 43
    invoke-virtual {v2, v8, v10, v9, v6}, Lcom/google/ads/interactivemedia/v3/internal/jv;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;ZZI)J

    move-result-wide v11

    long-to-int v2, v11

    iput v2, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->Q:I

    iget-object v2, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->f:Lcom/google/ads/interactivemedia/v3/internal/jv;

    .line 44
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/jv;->b()I

    move-result v2

    iput v2, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->R:I

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v11, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->M:J

    iput v9, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->K:I

    iget-object v2, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 45
    invoke-virtual {v2, v10}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    :cond_9
    iget-object v2, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->g:Landroid/util/SparseArray;

    iget v11, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->Q:I

    .line 46
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/google/ads/interactivemedia/v3/internal/jr;

    if-nez v11, :cond_a

    iget v0, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->R:I

    sub-int v0, v1, v0

    .line 47
    invoke-virtual {v8, v0}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    iput v10, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->K:I

    return-void

    :cond_a
    iget v2, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->K:I

    if-ne v2, v9, :cond_1c

    const/4 v2, 0x3

    .line 48
    invoke-direct {v7, v8, v2}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;I)V

    iget-object v12, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 49
    invoke-virtual {v12}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v12

    aget-byte v12, v12, v5

    and-int/lit8 v12, v12, 0x6

    shr-int/2addr v12, v9

    const/16 v13, 0xff

    if-nez v12, :cond_b

    iput v9, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->O:I

    iget-object v2, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->P:[I

    .line 50
    invoke-static {v2, v9}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a([II)[I

    move-result-object v2

    iput-object v2, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->P:[I

    iget v3, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->R:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x3

    .line 51
    aput v1, v2, v10

    :goto_0
    move-object/from16 v17, v11

    goto/16 :goto_6

    .line 52
    :cond_b
    invoke-direct {v7, v8, v3}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;I)V

    iget-object v14, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 53
    invoke-virtual {v14}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v14

    aget-byte v14, v14, v2

    and-int/2addr v14, v13

    add-int/2addr v14, v9

    iput v14, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->O:I

    iget-object v15, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->P:[I

    .line 54
    invoke-static {v15, v14}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a([II)[I

    move-result-object v14

    iput-object v14, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->P:[I

    if-ne v12, v5, :cond_c

    iget v2, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->R:I

    iget v3, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->O:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x4

    .line 55
    div-int/2addr v1, v3

    .line 56
    invoke-static {v14, v10, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_0

    :cond_c
    if-ne v12, v9, :cond_f

    const/4 v2, 0x0

    const/4 v12, 0x0

    :goto_1
    iget v14, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->O:I

    add-int/lit8 v14, v14, -0x1

    if-ge v2, v14, :cond_e

    iget-object v14, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->P:[I

    .line 57
    aput v10, v14, v2

    :cond_d
    add-int/2addr v3, v9

    .line 58
    invoke-direct {v7, v8, v3}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;I)V

    iget-object v14, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 59
    invoke-virtual {v14}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v14

    add-int/lit8 v15, v3, -0x1

    aget-byte v14, v14, v15

    and-int/2addr v14, v13

    iget-object v15, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->P:[I

    .line 60
    aget v16, v15, v2

    add-int v16, v16, v14

    aput v16, v15, v2

    if-eq v14, v13, :cond_d

    add-int v12, v12, v16

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_e
    iget-object v2, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->P:[I

    iget v15, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->R:I

    sub-int/2addr v1, v15

    sub-int/2addr v1, v3

    sub-int/2addr v1, v12

    .line 61
    aput v1, v2, v14

    goto :goto_0

    :cond_f
    if-ne v12, v2, :cond_1b

    const/4 v2, 0x0

    const/4 v12, 0x0

    :goto_2
    iget v14, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->O:I

    add-int/lit8 v14, v14, -0x1

    if-ge v2, v14, :cond_17

    iget-object v14, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->P:[I

    .line 62
    aput v10, v14, v2

    add-int/lit8 v3, v3, 0x1

    .line 63
    invoke-direct {v7, v8, v3}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;I)V

    add-int/lit8 v14, v3, -0x1

    iget-object v15, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 64
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v15

    aget-byte v15, v15, v14

    if-eqz v15, :cond_16

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v6, :cond_12

    rsub-int/lit8 v16, v15, 0x7

    shl-int v4, v9, v16

    iget-object v5, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 65
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v5

    aget-byte v5, v5, v14

    and-int/2addr v5, v4

    if-eqz v5, :cond_11

    add-int/2addr v3, v15

    .line 66
    invoke-direct {v7, v8, v3}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;I)V

    add-int/lit8 v5, v14, 0x1

    iget-object v9, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 67
    invoke-virtual {v9}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v9

    aget-byte v9, v9, v14

    and-int/2addr v9, v13

    not-int v4, v4

    and-int/2addr v4, v9

    move-object/from16 v17, v11

    int-to-long v10, v4

    :goto_4
    if-ge v5, v3, :cond_10

    add-int/lit8 v4, v5, 0x1

    shl-long/2addr v10, v6

    iget-object v14, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 68
    invoke-virtual {v14}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v14

    aget-byte v5, v14, v5

    and-int/2addr v5, v13

    int-to-long v13, v5

    or-long/2addr v10, v13

    move v5, v4

    const/16 v13, 0xff

    goto :goto_4

    :cond_10
    if-lez v2, :cond_13

    const-wide/16 v4, 0x1

    mul-int/lit8 v15, v15, 0x7

    add-int/lit8 v15, v15, 0x6

    shl-long/2addr v4, v15

    const-wide/16 v13, -0x1

    add-long/2addr v4, v13

    sub-long/2addr v10, v4

    goto :goto_5

    :cond_11
    move-object/from16 v17, v11

    add-int/lit8 v15, v15, 0x1

    const/16 v4, 0xa3

    const/4 v5, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v13, 0xff

    goto :goto_3

    :cond_12
    move-object/from16 v17, v11

    const-wide/16 v10, 0x0

    :cond_13
    :goto_5
    const-wide/32 v4, -0x80000000

    cmp-long v13, v10, v4

    if-ltz v13, :cond_15

    const-wide/32 v4, 0x7fffffff

    cmp-long v13, v10, v4

    if-gtz v13, :cond_15

    long-to-int v4, v10

    .line 70
    iget-object v5, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->P:[I

    if-eqz v2, :cond_14

    add-int/lit8 v10, v2, -0x1

    .line 69
    aget v10, v5, v10

    add-int/2addr v4, v10

    :cond_14
    aput v4, v5, v2

    add-int/2addr v12, v4

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v11, v17

    const/16 v4, 0xa3

    const/4 v5, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v13, 0xff

    goto/16 :goto_2

    .line 68
    :cond_15
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v1, "EBML lacing sample size out of range."

    .line 70
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_16
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v1, "No valid varint length mask found"

    .line 71
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move-object/from16 v17, v11

    .line 69
    iget-object v2, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->P:[I

    iget v4, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->R:I

    sub-int/2addr v1, v4

    sub-int/2addr v1, v3

    sub-int/2addr v1, v12

    .line 72
    aput v1, v2, v14

    .line 51
    :goto_6
    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 73
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    iget-object v2, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v2

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    iget-wide v3, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->F:J

    shl-int/2addr v1, v6

    const/16 v5, 0xff

    and-int/2addr v2, v5

    or-int/2addr v1, v2

    int-to-long v1, v1

    .line 74
    invoke-direct {v7, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a(J)J

    move-result-wide v1

    add-long/2addr v3, v1

    iput-wide v3, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->L:J

    move-object/from16 v10, v17

    iget v1, v10, Lcom/google/ads/interactivemedia/v3/internal/jr;->d:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_19

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 75
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    aget-byte v0, v0, v2

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_18

    const/16 v0, 0xa3

    goto :goto_7

    :cond_18
    const/16 v0, 0xa3

    :cond_19
    const/4 v1, 0x0

    goto :goto_8

    :cond_1a
    :goto_7
    const/4 v1, 0x1

    :goto_8
    iput v1, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->S:I

    iput v2, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->K:I

    const/4 v1, 0x0

    iput v1, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->N:I

    goto :goto_9

    :cond_1b
    const/4 v2, 0x2

    .line 81
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/dt;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x24

    .line 80
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected lacing value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    move-object v10, v11

    :goto_9
    const/16 v1, 0xa3

    if-ne v0, v1, :cond_1e

    .line 75
    :goto_a
    iget v0, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->N:I

    iget v1, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->O:I

    if-ge v0, v1, :cond_1d

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->P:[I

    .line 78
    aget v0, v1, v0

    invoke-direct {v7, v8, v10, v0}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/jr;I)I

    move-result v5

    iget-wide v0, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->L:J

    iget v2, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->N:I

    iget v3, v10, Lcom/google/ads/interactivemedia/v3/internal/jr;->e:I

    mul-int v2, v2, v3

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v2, v0

    iget v4, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->S:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    .line 79
    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a(Lcom/google/ads/interactivemedia/v3/internal/jr;JIII)V

    iget v0, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->N:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->N:I

    goto :goto_a

    :cond_1d
    const/4 v0, 0x0

    iput v0, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->K:I

    return-void

    :cond_1e
    :goto_b
    iget v0, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->N:I

    iget v1, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->O:I

    if-ge v0, v1, :cond_1f

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->P:[I

    .line 76
    aget v2, v1, v0

    .line 77
    invoke-direct {v7, v8, v10, v2}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/jr;I)I

    move-result v2

    aput v2, v1, v0

    iget v0, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->N:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lcom/google/ads/interactivemedia/v3/internal/jt;->N:I

    goto :goto_b

    :cond_1f
    return-void
.end method

.method protected final a(IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/dt;
        }
    .end annotation

    const/16 v0, 0x5031

    const/16 v1, 0x37

    const-string v2, " not supported"

    if-eq p1, v0, :cond_19

    const/16 v0, 0x5032

    const-wide/16 v3, 0x1

    if-eq p1, v0, :cond_17

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

    :pswitch_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->B:I

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->A:I

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    iput-boolean v7, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->w:Z

    long-to-int p3, p2

    if-eq p3, v7, :cond_2

    const/16 p2, 0x9

    if-eq p3, p2, :cond_1

    const/4 p2, 0x4

    if-eq p3, p2, :cond_0

    const/4 p2, 0x5

    if-eq p3, p2, :cond_0

    if-eq p3, v1, :cond_0

    if-eq p3, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iput v6, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->x:I

    return-void

    :cond_1
    iput v1, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->x:I

    return-void

    :cond_2
    iput v7, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->x:I

    return-void

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

    :cond_3
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    iput v0, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->y:I

    return-void

    :cond_4
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    iput v1, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->y:I

    return-void

    :cond_5
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    iput v5, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->y:I

    return-void

    :pswitch_4
    long-to-int p1, p2

    if-eq p1, v7, :cond_7

    if-eq p1, v6, :cond_6

    goto/16 :goto_0

    :cond_6
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    iput v7, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->z:I

    return-void

    :cond_7
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    iput v6, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->z:I

    return-void

    :sswitch_0
    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->v:J

    return-void

    :sswitch_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->e:I

    return-void

    :sswitch_2
    long-to-int p1, p2

    if-eqz p1, :cond_b

    if-eq p1, v7, :cond_a

    if-eq p1, v6, :cond_9

    if-eq p1, v5, :cond_8

    goto/16 :goto_0

    :cond_8
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    iput v5, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->q:I

    return-void

    :cond_9
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    iput v6, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->q:I

    return-void

    :cond_a
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    iput v7, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->q:I

    return-void

    :cond_b
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    iput v1, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->q:I

    return-void

    :sswitch_3
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->N:I

    return-void

    :sswitch_4
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    iput-wide p2, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->Q:J

    return-void

    :sswitch_5
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    iput-wide p2, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->P:J

    return-void

    :sswitch_6
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->f:I

    return-void

    :sswitch_7
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    cmp-long v0, p2, v3

    if-nez v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    iput-boolean v1, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->S:Z

    return-void

    :sswitch_8
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->o:I

    return-void

    :sswitch_9
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->p:I

    return-void

    :sswitch_a
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->n:I

    return-void

    :sswitch_b
    long-to-int p1, p2

    if-eqz p1, :cond_10

    if-eq p1, v7, :cond_f

    if-eq p1, v5, :cond_e

    const/16 p2, 0xf

    if-eq p1, p2, :cond_d

    goto/16 :goto_0

    :cond_d
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    iput v5, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->v:I

    return-void

    :cond_e
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    iput v7, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->v:I

    return-void

    :cond_f
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    iput v6, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->v:I

    return-void

    :cond_10
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    iput v1, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->v:I

    return-void

    :sswitch_c
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->u:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->B:J

    return-void

    :sswitch_d
    cmp-long p1, p2, v3

    if-nez p1, :cond_11

    goto/16 :goto_0

    .line 176
    :cond_11
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x38

    .line 177
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AESSettingsCipherMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_e
    const-wide/16 v0, 0x5

    cmp-long p1, p2, v0

    if-nez p1, :cond_12

    goto/16 :goto_0

    :cond_12
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x31

    .line 178
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncAlgo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_f
    cmp-long p1, p2, v3

    if-nez p1, :cond_13

    goto/16 :goto_0

    :cond_13
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 179
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "EBMLReadVersion "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_10
    cmp-long p1, p2, v3

    if-ltz p1, :cond_14

    const-wide/16 v0, 0x2

    cmp-long p1, p2, v0

    if-gtz p1, :cond_14

    goto/16 :goto_0

    :cond_14
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x35

    .line 180
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "DocTypeReadVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_11
    const-wide/16 v3, 0x3

    cmp-long p1, p2, v3

    if-nez p1, :cond_15

    goto/16 :goto_0

    :cond_15
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 181
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ContentCompAlgo "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_12
    iput-boolean v7, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->U:Z

    return-void

    :sswitch_13
    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->I:Z

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->H:Lcom/google/ads/interactivemedia/v3/internal/abi;

    .line 182
    invoke-virtual {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/abi;->a(J)V

    iput-boolean v7, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->I:Z

    return-void

    :sswitch_14
    long-to-int p1, p2

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->T:I

    return-void

    .line 183
    :sswitch_15
    invoke-direct {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->F:J

    return-void

    :sswitch_16
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->c:I

    return-void

    :sswitch_17
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->m:I

    return-void

    :sswitch_18
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->G:Lcom/google/ads/interactivemedia/v3/internal/abi;

    .line 184
    invoke-direct {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/abi;->a(J)V

    return-void

    :sswitch_19
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->l:I

    return-void

    :sswitch_1a
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->M:I

    return-void

    .line 185
    :sswitch_1b
    invoke-direct {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->M:J

    return-void

    .line 0
    :sswitch_1c
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    cmp-long v0, p2, v3

    if-nez v0, :cond_16

    const/4 v1, 0x1

    :cond_16
    iput-boolean v1, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->T:Z

    return-void

    .line 185
    :sswitch_1d
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->d:I

    return-void

    :cond_17
    cmp-long p1, p2, v3

    if-nez p1, :cond_18

    goto :goto_0

    .line 0
    :cond_18
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 175
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingScope "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    const-wide/16 v3, 0x0

    cmp-long p1, p2, v3

    if-nez p1, :cond_1b

    :cond_1a
    :goto_0
    return-void

    :cond_1b
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 176
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingOrder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_1d
        0x88 -> :sswitch_1c
        0x9b -> :sswitch_1b
        0x9f -> :sswitch_1a
        0xb0 -> :sswitch_19
        0xb3 -> :sswitch_18
        0xba -> :sswitch_17
        0xd7 -> :sswitch_16
        0xe7 -> :sswitch_15
        0xee -> :sswitch_14
        0xf1 -> :sswitch_13
        0xfb -> :sswitch_12
        0x4254 -> :sswitch_11
        0x4285 -> :sswitch_10
        0x42f7 -> :sswitch_f
        0x47e1 -> :sswitch_e
        0x47e8 -> :sswitch_d
        0x53ac -> :sswitch_c
        0x53b8 -> :sswitch_b
        0x54b0 -> :sswitch_a
        0x54b2 -> :sswitch_9
        0x54ba -> :sswitch_8
        0x55aa -> :sswitch_7
        0x55ee -> :sswitch_6
        0x56aa -> :sswitch_5
        0x56bb -> :sswitch_4
        0x6264 -> :sswitch_3
        0x7671 -> :sswitch_2
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

.method protected final a(IJJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/dt;
        }
    .end annotation

    const/16 v0, 0xa0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_c

    const/16 v0, 0xae

    if-eq p1, v0, :cond_b

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_a

    const/16 v0, 0x4dbb

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_9

    const/16 v0, 0x5035

    const/4 v3, 0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x55d0

    if-eq p1, v0, :cond_7

    const v0, 0x18538067

    if-eq p1, v0, :cond_4

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_3

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->z:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->h:Z

    if-eqz p1, :cond_1

    iget-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->D:J

    cmp-long p3, p1, v1

    if-eqz p3, :cond_1

    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->C:Z

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->ae:Lcom/google/ads/interactivemedia/v3/internal/ii;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/it;

    iget-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->x:J

    .line 207
    invoke-direct {p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/it;-><init>(J)V

    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(Lcom/google/ads/interactivemedia/v3/internal/iu;)V

    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->z:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abi;

    .line 208
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/abi;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->G:Lcom/google/ads/interactivemedia/v3/internal/abi;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abi;

    .line 209
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/abi;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->H:Lcom/google/ads/interactivemedia/v3/internal/abi;

    return-void

    :cond_4
    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->u:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_6

    cmp-long p1, v3, p2

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string p2, "Multiple Segment elements not supported"

    .line 210
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->u:J

    iput-wide p4, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->t:J

    return-void

    :cond_7
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    iput-boolean v3, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->w:Z

    return-void

    :cond_8
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    iput-boolean v3, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->g:Z

    return-void

    :cond_9
    const/4 p1, -0x1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->A:I

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->B:J

    return-void

    :cond_a
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->I:Z

    return-void

    :cond_b
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/jr;

    const/4 p2, 0x0

    .line 211
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/jr;-><init>([B)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    return-void

    :cond_c
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->U:Z

    return-void
.end method

.method protected final a(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/dt;
        }
    .end annotation

    const/16 v0, 0x86

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_2

    const/16 v0, 0x536e

    if-eq p1, v0, :cond_1

    const v0, 0x22b59c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    .line 212
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/jr;->a(Lcom/google/ads/interactivemedia/v3/internal/jr;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    iput-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->a:Ljava/lang/String;

    return-void

    :cond_2
    const-string p1, "webm"

    .line 213
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "matroska"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    .line 214
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x16

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "DocType "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return-void

    .line 212
    :cond_5
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->y:Lcom/google/ads/interactivemedia/v3/internal/jr;

    iput-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->b:Ljava/lang/String;

    return-void
.end method

.method public final a(JJ)V
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->F:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->K:I

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->af:Lcom/google/ads/interactivemedia/v3/internal/jo;

    .line 200
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/jo;->a()V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->f:Lcom/google/ads/interactivemedia/v3/internal/jv;

    .line 201
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/jv;->a()V

    .line 202
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/jt;->f()V

    :goto_0
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->g:Landroid/util/SparseArray;

    .line 203
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->g:Landroid/util/SparseArray;

    .line 204
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/jr;

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/jr;->R:Lcom/google/ads/interactivemedia/v3/internal/js;

    if-eqz p2, :cond_0

    .line 205
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/js;->a()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ii;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->ae:Lcom/google/ads/interactivemedia/v3/internal/ii;

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ju;

    .line 206
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/ju;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ju;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z

    move-result p1

    return p1
.end method

.method public final c()V
    .locals 0

    return-void
.end method
