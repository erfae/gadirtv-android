.class public final Lcom/google/vr/sdk/widgets/video/deps/cv;
.super Ljava/lang/Object;
.source "GaplessInfoHolder.java"


# static fields
.field public static final a:Lcom/google/vr/sdk/widgets/video/deps/he$a;

.field private static final d:Ljava/util/regex/Pattern;


# instance fields
.field public b:I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/cw;->a:Lcom/google/vr/sdk/widgets/video/deps/he$a;

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/cv;->a:Lcom/google/vr/sdk/widgets/video/deps/he$a;

    const-string v0, "^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})"

    .line 42
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/cv;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cv;->b:I

    .line 3
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cv;->c:I

    return-void
.end method

.method static final synthetic a(IIIII)Z
    .locals 1

    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    const/16 p1, 0x4f

    if-ne p2, p1, :cond_1

    const/16 p1, 0x4d

    if-ne p3, p1, :cond_1

    if-eq p4, p1, :cond_0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    .line 27
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/cv;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 29
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    .line 30
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    if-gtz v1, :cond_0

    if-lez p1, :cond_1

    .line 32
    :cond_0
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cv;->b:I

    .line 33
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cv;->c:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 38
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cv;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cv;->c:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(I)Z
    .locals 1

    shr-int/lit8 v0, p1, 0xc

    and-int/lit16 p1, p1, 0xfff

    if-gtz v0, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 8
    :cond_1
    :goto_0
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cv;->b:I

    .line 9
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cv;->c:I

    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/gp;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gp;->a()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 13
    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/gp;->a(I)Lcom/google/vr/sdk/widgets/video/deps/gp$a;

    move-result-object v2

    .line 14
    instance-of v3, v2, Lcom/google/vr/sdk/widgets/video/deps/hc;

    const-string v4, "iTunSMPB"

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 15
    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/hc;

    .line 16
    iget-object v3, v2, Lcom/google/vr/sdk/widgets/video/deps/hc;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/hc;->c:Ljava/lang/String;

    .line 17
    invoke-direct {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/cv;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v5

    .line 19
    :cond_0
    instance-of v3, v2, Lcom/google/vr/sdk/widgets/video/deps/hh;

    if-eqz v3, :cond_1

    .line 20
    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/hh;

    .line 21
    iget-object v3, v2, Lcom/google/vr/sdk/widgets/video/deps/hh;->a:Ljava/lang/String;

    const-string v6, "com.apple.iTunes"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/google/vr/sdk/widgets/video/deps/hh;->b:Ljava/lang/String;

    .line 22
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/hh;->c:Ljava/lang/String;

    .line 23
    invoke-direct {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/cv;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method
