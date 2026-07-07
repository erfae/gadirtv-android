.class public final Lcom/google/vr/sdk/widgets/video/deps/mp;
.super Lcom/google/vr/sdk/widgets/video/deps/lj;
.source "Tx3gDecoder.java"


# static fields
.field private static final a:I

.field private static final b:I


# instance fields
.field private final c:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private d:Z

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:F

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "styl"

    .line 100
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/mp;->a:I

    const-string v0, "tbox"

    .line 101
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/mp;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "Tx3gDecoder"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/lj;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 3
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/mp;->a(Ljava/util/List;)V

    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/pe;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/ln;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/mp;->a(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v2

    if-lt v2, v1, :cond_3

    .line 60
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->g()C

    move-result v1

    const v2, 0xfeff

    if-eq v1, v2, :cond_2

    const v2, 0xfffe

    if-ne v1, v2, :cond_3

    :cond_2
    const-string v1, "UTF-16"

    .line 62
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v1, "UTF-8"

    .line 63
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 5

    if-eq p1, p2, :cond_7

    or-int/lit8 p2, p5, 0x21

    and-int/lit8 p5, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz p5, :cond_3

    if-eqz v2, :cond_2

    .line 80
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 81
    :cond_2
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    .line 83
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    :goto_2
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_6

    .line 86
    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    if-nez v1, :cond_7

    if-nez p5, :cond_7

    if-nez v2, :cond_7

    .line 88
    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    return-void
.end method

.method private static a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    if-eq p1, p2, :cond_0

    .line 95
    new-instance p2, Landroid/text/style/TypefaceSpan;

    invoke-direct {p2, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    or-int/lit8 p1, p5, 0x21

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/pe;Landroid/text/SpannableStringBuilder;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/ln;
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xc

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/mp;->a(Z)V

    .line 65
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v0

    .line 66
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v8

    const/4 v2, 0x2

    .line 67
    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 68
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v3

    .line 69
    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 70
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result p1

    .line 71
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->e:I

    const/4 v7, 0x0

    move-object v2, p2

    move v5, v0

    move v6, v8

    invoke-static/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/mp;->a(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 72
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->f:I

    move v3, p1

    invoke-static/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/mp;->b(Landroid/text/SpannableStringBuilder;IIIII)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const v0, 0x3f59999a    # 0.85f

    const-string v1, "sans-serif"

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 6
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    const/16 v5, 0x30

    if-eq v3, v5, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    const/16 v5, 0x35

    if-ne v3, v5, :cond_4

    .line 7
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/16 v3, 0x18

    .line 8
    aget-byte v5, p1, v3

    iput v5, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->e:I

    const/16 v5, 0x1a

    .line 9
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v3, v5, 0x18

    const/16 v5, 0x1b

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v3, v5

    const/16 v5, 0x1c

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    const/16 v5, 0x1d

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->f:I

    .line 10
    array-length v3, p1

    const/16 v5, 0x2b

    sub-int/2addr v3, v5

    .line 11
    invoke-static {p1, v5, v3}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a([BII)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Serif"

    .line 12
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "serif"

    :cond_1
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->g:Ljava/lang/String;

    const/16 v1, 0x19

    .line 13
    aget-byte v1, p1, v1

    mul-int/lit8 v1, v1, 0x14

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->i:I

    .line 14
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->d:Z

    if-eqz v2, :cond_3

    const/16 v0, 0xa

    .line 16
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/16 v2, 0xb

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    int-to-float p1, p1

    int-to-float v0, v1

    div-float/2addr p1, v0

    .line 17
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->h:F

    const/4 v0, 0x0

    const v1, 0x3f733333    # 0.95f

    .line 18
    invoke-static {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(FFF)F

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->h:F

    goto :goto_0

    .line 20
    :cond_3
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->h:F

    goto :goto_0

    .line 22
    :cond_4
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->e:I

    const/4 p1, -0x1

    .line 23
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->f:I

    .line 24
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->g:Ljava/lang/String;

    .line 25
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->d:Z

    .line 26
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->h:F

    :goto_0
    return-void
.end method

.method private static a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/ln;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-void

    .line 98
    :cond_0
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/ln;

    const-string v0, "Unexpected subtitle format."

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ln;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 0

    if-eq p1, p2, :cond_0

    and-int/lit16 p2, p1, 0xff

    shl-int/lit8 p2, p2, 0x18

    ushr-int/lit8 p1, p1, 0x8

    or-int/2addr p1, p2

    .line 92
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    or-int/lit8 p1, p5, 0x21

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a([BIZ)Lcom/google/vr/sdk/widgets/video/deps/ll;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/ln;
        }
    .end annotation

    .line 28
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BI)V

    .line 29
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/mp;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 31
    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/mq;->a:Lcom/google/vr/sdk/widgets/video/deps/mq;

    return-object p1

    .line 32
    :cond_0
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 33
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/high16 v5, 0xff0000

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/mp;->a(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 34
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->f:I

    const/4 v2, -0x1

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-static/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/mp;->b(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 35
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->g:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const-string v2, "sans-serif"

    invoke-static/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/mp;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;III)V

    .line 36
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->h:F

    move v3, p1

    .line 37
    :goto_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result p1

    const/16 p3, 0x8

    if-lt p1, p3, :cond_5

    .line 38
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result p1

    .line 39
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result p3

    .line 40
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v0

    .line 41
    sget v1, Lcom/google/vr/sdk/widgets/video/deps/mp;->a:I

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v1, :cond_2

    .line 42
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    if-lt v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Lcom/google/vr/sdk/widgets/video/deps/mp;->a(Z)V

    .line 43
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v0

    :goto_2
    if-ge v5, v0, :cond_4

    .line 45
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {p0, v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/mp;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;Landroid/text/SpannableStringBuilder;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 47
    :cond_2
    sget v1, Lcom/google/vr/sdk/widgets/video/deps/mp;->b:I

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->d:Z

    if-eqz v0, :cond_4

    .line 48
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    if-lt v0, v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-static {v4}, Lcom/google/vr/sdk/widgets/video/deps/mp;->a(Z)V

    .line 49
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v0

    int-to-float v0, v0

    .line 50
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->i:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const v2, 0x3f733333    # 0.95f

    .line 51
    invoke-static {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(FFF)F

    move-result v3

    .line 52
    :cond_4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mp;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    add-int/2addr p1, p3

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    goto :goto_0

    .line 54
    :cond_5
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/mq;

    new-instance p3, Lcom/google/vr/sdk/widgets/video/deps/li;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, -0x80000000

    const/4 v8, 0x1

    move-object v0, p3

    move-object v1, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/li;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    invoke-direct {p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/mq;-><init>(Lcom/google/vr/sdk/widgets/video/deps/li;)V

    return-object p1
.end method
