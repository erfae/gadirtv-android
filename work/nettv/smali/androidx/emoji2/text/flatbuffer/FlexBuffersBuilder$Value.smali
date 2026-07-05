.class Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
.super Ljava/lang/Object;
.source "FlexBuffersBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Value"
.end annotation


# instance fields
.field public final dValue:D

.field public iValue:J

.field public key:I

.field public final minBitWidth:I

.field public final type:I


# direct methods
.method public constructor <init>(IID)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->key:I

    const/4 p1, 0x3

    .line 9
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    .line 10
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->minBitWidth:I

    .line 11
    iput-wide p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->dValue:D

    const-wide/high16 p1, -0x8000000000000000L

    .line 12
    iput-wide p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    return-void
.end method

.method public constructor <init>(IIIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->key:I

    .line 3
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    .line 4
    iput p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->minBitWidth:I

    .line 5
    iput-wide p4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    const-wide/16 p1, 0x1

    .line 6
    iput-wide p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->dValue:D

    return-void
.end method

.method public static synthetic access$100(II)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->paddingBytes(II)I

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->elemWidth(II)I

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;)B
    .locals 0

    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->storedPackedType()B

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;I)B
    .locals 0

    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->storedPackedType(I)B

    move-result p0

    return p0
.end method

.method public static synthetic access$500(JII)I
    .locals 6

    const/4 v0, 0x4

    const/4 v1, 0x0

    move-wide v2, p0

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->elemWidth(IIJII)I

    move-result p0

    return p0
.end method

.method private elemWidth(II)I
    .locals 6

    .line 1
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->minBitWidth:I

    iget-wide v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->elemWidth(IIJII)I

    move-result p1

    return p1
.end method

.method private static elemWidth(IIJII)I
    .locals 6

    .line 2
    sget v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->FBT_NULL:I

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-le p0, v1, :cond_1

    const/16 v2, 0x1a

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_2

    return p1

    :cond_2
    :goto_2
    const/16 p0, 0x20

    if-gt v0, p0, :cond_4

    .line 3
    invoke-static {p4, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->paddingBytes(II)I

    move-result p0

    add-int/2addr p0, p4

    mul-int p1, p5, v0

    add-int/2addr p1, p0

    int-to-long p0, p1

    sub-long/2addr p0, p2

    long-to-int p1, p0

    int-to-long p0, p1

    .line 4
    invoke-static {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->widthUInBits(J)I

    move-result p0

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p0

    int-to-long v4, v0

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    return p0

    :cond_3
    mul-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_4
    return v1
.end method

.method private static packedType(II)B
    .locals 0

    shl-int/lit8 p1, p1, 0x2

    or-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method

.method private static paddingBytes(II)I
    .locals 0

    not-int p0, p0

    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p1, p1, -0x1

    and-int/2addr p0, p1

    return p0
.end method

.method private storedPackedType()B
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->storedPackedType(I)B

    move-result v0

    return v0
.end method

.method private storedPackedType(I)B
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->storedWidth(I)I

    move-result p1

    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    invoke-static {p1, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->packedType(II)B

    move-result p1

    return p1
.end method

.method private storedWidth(I)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    sget v1, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->FBT_NULL:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 2
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->minBitWidth:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    .line 3
    :cond_2
    iget p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->minBitWidth:I

    return p1
.end method
