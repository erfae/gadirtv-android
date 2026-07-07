.class public final Lcom/google/vr/sdk/widgets/video/deps/mf;
.super Lcom/google/vr/sdk/widgets/video/deps/lj;
.source "SsaDecoder.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?:(\\d+):)?(\\d+):(\\d+)(?::|\\.)(\\d+)"

    .line 89
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/mf;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/mf;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "SsaDecoder"

    .line 3
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/lj;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/mf;->b:Z

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Format: "

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Z)V

    .line 8
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/mf;->b(Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/mf;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)V

    goto :goto_0

    .line 11
    :cond_0
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mf;->b:Z

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 8

    .line 80
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/mf;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 81
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    mul-long v0, v0, v2

    const-wide/32 v4, 0xf4240

    mul-long v0, v0, v4

    const/4 v6, 0x2

    .line 84
    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    mul-long v6, v6, v2

    mul-long v6, v6, v4

    add-long/2addr v0, v6

    const/4 v2, 0x3

    .line 85
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x4

    .line 86
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/pe;)V
    .locals 2

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->B()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "[Events]"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/pe;Ljava/util/List;Lcom/google/vr/sdk/widgets/video/deps/oz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/pe;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/li;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/oz;",
            ")V"
        }
    .end annotation

    .line 27
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->B()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 28
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/mf;->b:Z

    if-nez v1, :cond_1

    const-string v1, "Format: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/mf;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "Dialogue: "

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-direct {p0, v0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/mf;->a(Ljava/lang/String;Ljava/util/List;Lcom/google/vr/sdk/widgets/video/deps/oz;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Lcom/google/vr/sdk/widgets/video/deps/oz;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/li;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/oz;",
            ")V"
        }
    .end annotation

    .line 51
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mf;->c:I

    const-string v1, "SsaDecoder"

    if-nez v0, :cond_1

    const-string p2, "Skipping dialogue line before complete format: "

    .line 52
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 v0, 0xa

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/mf;->c:I

    const-string v3, ","

    .line 55
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 56
    array-length v2, v0

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/mf;->c:I

    if-eq v2, v3, :cond_3

    const-string p2, "Skipping dialogue line with fewer columns than format: "

    .line 57
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 59
    :cond_3
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/mf;->d:I

    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/mf;->a(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "Skipping invalid timing: "

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v2, v5

    if-nez v7, :cond_5

    .line 61
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 64
    :cond_5
    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/mf;->e:I

    aget-object v7, v0, v7

    .line 65
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 66
    invoke-static {v7}, Lcom/google/vr/sdk/widgets/video/deps/mf;->a(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-nez v9, :cond_8

    .line 68
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    move-wide v7, v5

    .line 70
    :cond_8
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mf;->f:I

    aget-object p1, v0, p1

    const-string v0, "\\{.*?\\}"

    const-string v1, ""

    .line 71
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\\\N"

    const-string v1, "\n"

    .line 72
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\\\n"

    .line 73
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/li;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/li;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {p3, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/oz;->a(J)V

    cmp-long p1, v7, v5

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    .line 77
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {p3, v7, v8}, Lcom/google/vr/sdk/widgets/video/deps/oz;->a(J)V

    :cond_9
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    const/16 v0, 0x8

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 34
    array-length v0, p1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mf;->c:I

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mf;->d:I

    .line 36
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mf;->e:I

    .line 37
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mf;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 38
    :goto_0
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/mf;->c:I

    if-ge v2, v3, :cond_3

    .line 39
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_1
    const/4 v3, -0x1

    goto :goto_2

    :sswitch_0
    const-string v4, "start"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x2

    goto :goto_2

    :sswitch_1
    const-string v4, "text"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    goto :goto_2

    :sswitch_2
    const-string v4, "end"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto :goto_3

    .line 41
    :pswitch_0
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/mf;->d:I

    goto :goto_3

    .line 45
    :pswitch_1
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/mf;->f:I

    goto :goto_3

    .line 43
    :pswitch_2
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/mf;->e:I

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    :cond_3
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mf;->d:I

    if-eq p1, v0, :cond_4

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mf;->e:I

    if-eq p1, v0, :cond_4

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mf;->f:I

    if-ne p1, v0, :cond_5

    .line 49
    :cond_4
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/mf;->c:I

    :cond_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0x188db -> :sswitch_2
        0x36452d -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected synthetic a([BIZ)Lcom/google/vr/sdk/widgets/video/deps/ll;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/ln;
        }
    .end annotation

    .line 88
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/mf;->b([BIZ)Lcom/google/vr/sdk/widgets/video/deps/mg;

    move-result-object p1

    return-object p1
.end method

.method protected b([BIZ)Lcom/google/vr/sdk/widgets/video/deps/mg;
    .locals 2

    .line 13
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/oz;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/oz;-><init>()V

    .line 15
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {v1, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>([BI)V

    .line 16
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mf;->b:Z

    if-nez p1, :cond_0

    .line 17
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/mf;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)V

    .line 18
    :cond_0
    invoke-direct {p0, v1, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/mf;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;Ljava/util/List;Lcom/google/vr/sdk/widgets/video/deps/oz;)V

    .line 19
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/li;

    .line 20
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 21
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/oz;->b()[J

    move-result-object p2

    .line 22
    new-instance p3, Lcom/google/vr/sdk/widgets/video/deps/mg;

    invoke-direct {p3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/mg;-><init>([Lcom/google/vr/sdk/widgets/video/deps/li;[J)V

    return-object p3
.end method
