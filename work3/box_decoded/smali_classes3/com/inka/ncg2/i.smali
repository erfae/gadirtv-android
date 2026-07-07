.class Lcom/inka/ncg2/i;
.super Lcom/inka/ncg2/Ncg2Agent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inka/ncg2/i$e;,
        Lcom/inka/ncg2/i$b;,
        Lcom/inka/ncg2/i$c;,
        Lcom/inka/ncg2/i$a;,
        Lcom/inka/ncg2/i$d;
    }
.end annotation


# static fields
.field private static A:Lcom/inka/ncg2/i; = null

.field private static final f:I = 0xbb8

.field private static final g:Ljava/lang/String; = "NCG_Agent"

.field private static final h:Ljava/lang/String; = "20190508"

.field private static final i:Ljava/lang/String; = "https://license.pallycon.com/ri/licenseManager.do"

.field private static final j:Ljava/lang/String; = "http://sd.pallycon.com/side/serialauth.do"


# instance fields
.field private B:Lcom/inka/ncg2/i$b;

.field a:Z

.field b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

.field c:Lcom/inka/ncg2/h;

.field private d:Ljava/util/TimerTask;

.field private e:Ljava/util/Timer;

.field private k:Lcom/inka/ncg/jni/NcgCoreWrapper;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/content/Context;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Z

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Z

.field private v:Lcom/inka/ncg2/l;

.field private w:Lcom/inka/ncg2/i$e;

.field private x:Lcom/inka/ncg/jni/NcgSdkHelperCallback;

.field private y:Lcom/inka/ncg2/i$d;

.field private z:Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 116
    new-instance v0, Lcom/inka/ncg2/i;

    invoke-direct {v0}, Lcom/inka/ncg2/i;-><init>()V

    sput-object v0, Lcom/inka/ncg2/i;->A:Lcom/inka/ncg2/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 109
    invoke-direct {p0}, Lcom/inka/ncg2/Ncg2Agent;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/inka/ncg2/i;->m:Ljava/util/Map;

    const-string v1, ""

    .line 72
    iput-object v1, p0, Lcom/inka/ncg2/i;->o:Ljava/lang/String;

    const/4 v1, 0x1

    .line 73
    iput-boolean v1, p0, Lcom/inka/ncg2/i;->p:Z

    const/4 v2, 0x0

    .line 74
    iput-boolean v2, p0, Lcom/inka/ncg2/i;->q:Z

    .line 75
    iput-boolean v1, p0, Lcom/inka/ncg2/i;->a:Z

    .line 78
    iput v2, p0, Lcom/inka/ncg2/i;->r:I

    .line 85
    iput-boolean v1, p0, Lcom/inka/ncg2/i;->u:Z

    .line 88
    new-instance v1, Lcom/inka/ncg/jni/NcgSdkHelperCallback;

    invoke-direct {v1}, Lcom/inka/ncg/jni/NcgSdkHelperCallback;-><init>()V

    iput-object v1, p0, Lcom/inka/ncg2/i;->x:Lcom/inka/ncg/jni/NcgSdkHelperCallback;

    .line 1894
    iput-object v0, p0, Lcom/inka/ncg2/i;->c:Lcom/inka/ncg2/h;

    .line 2594
    new-instance v1, Lcom/inka/ncg2/i$b;

    invoke-direct {v1, p0, v0}, Lcom/inka/ncg2/i$b;-><init>(Lcom/inka/ncg2/i;Lcom/inka/ncg2/i$1;)V

    iput-object v1, p0, Lcom/inka/ncg2/i;->B:Lcom/inka/ncg2/i$b;

    .line 110
    iput-boolean v2, p0, Lcom/inka/ncg2/i;->t:Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;[C[C[I[J[J[J[C)I
    .locals 16

    move-object/from16 v0, p0

    .line 1782
    iget-object v1, v0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    if-eqz v1, :cond_4

    const/16 v11, 0x14

    new-array v12, v11, [B

    new-array v13, v11, [B

    const/16 v14, 0x100

    new-array v15, v14, [B

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v12

    move-object v5, v13

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object v10, v15

    .line 1793
    invoke-virtual/range {v1 .. v10}, Lcom/inka/ncg/jni/NcgCoreWrapper;->getLicenseInfoExByCID(Ljava/lang/String;Ljava/lang/String;[B[B[I[J[J[J[B)I

    move-result v1

    .line 1797
    invoke-direct {v0, v1}, Lcom/inka/ncg2/i;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "NCG_GetLicenseInfo()"

    .line 1798
    invoke-direct {v0, v2, v1}, Lcom/inka/ncg2/i;->a(Ljava/lang/String;I)V

    :cond_0
    const/4 v2, 0x0

    .line 1801
    aget-byte v3, v12, v2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v11, :cond_1

    .line 1804
    aget-byte v4, v12, v3

    int-to-char v4, v4

    aput-char v4, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1808
    :cond_1
    aget-byte v3, v13, v2

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v11, :cond_2

    .line 1811
    aget-byte v4, v13, v3

    int-to-char v4, v4

    aput-char v4, p4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-eqz p9, :cond_3

    .line 1816
    aget-byte v3, v15, v2

    if-eqz v3, :cond_3

    :goto_2
    if-ge v2, v14, :cond_3

    .line 1819
    aget-byte v3, v15, v2

    int-to-char v3, v3

    aput-char v3, p9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return v1

    .line 1783
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You must call Ncg2Agent.init() method first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    return-object p0
.end method

.method static synthetic a(Lcom/inka/ncg2/i;Lcom/inka/ncg2/i$e;)Lcom/inka/ncg2/i$e;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/inka/ncg2/i;->w:Lcom/inka/ncg2/i$e;

    return-object p1
.end method

.method public static a()Lcom/inka/ncg2/i;
    .locals 1

    .line 124
    sget-object v0, Lcom/inka/ncg2/i;->A:Lcom/inka/ncg2/i;

    return-object v0
.end method

.method static synthetic a(Lcom/inka/ncg2/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/inka/ncg2/i;->o:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1095
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const/4 p1, 0x4

    .line 1096
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    const/4 p1, 0x2

    .line 1098
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1102
    throw p1
.end method

.method static synthetic a(Lcom/inka/ncg2/i;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/inka/ncg2/i;->e:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Lcom/inka/ncg2/i;Ljava/util/TimerTask;)Ljava/util/TimerTask;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/inka/ncg2/i;->d:Ljava/util/TimerTask;

    return-object p1
.end method

.method static synthetic a(Lcom/inka/ncg2/i;Ljava/lang/String;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/inka/ncg2/i;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .line 1856
    iget-boolean v0, p0, Lcom/inka/ncg2/i;->p:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    .line 1858
    invoke-direct {p0, v2}, Lcom/inka/ncg2/i;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "NA]: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p1, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1859
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, ": %x"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NCG_Agent"

    .line 1857
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private a(I)Z
    .locals 1

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x270f

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/inka/ncg2/i;I)Z
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/inka/ncg2/i;->b(I)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/inka/ncg2/i;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/inka/ncg2/i;->q:Z

    return p1
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2HttpException;
        }
    .end annotation

    .line 1738
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    .line 1743
    iget-object p2, p0, Lcom/inka/ncg2/i;->y:Lcom/inka/ncg2/i$d;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/inka/ncg2/i$d;->a:Ljava/lang/String;

    .line 1744
    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_1

    .line 1745
    :cond_0
    invoke-direct {p0, p1}, Lcom/inka/ncg2/i;->d(Ljava/lang/String;)Lcom/inka/ncg2/i$d;

    move-result-object p1

    iput-object p1, p0, Lcom/inka/ncg2/i;->y:Lcom/inka/ncg2/i$d;

    .line 1748
    :cond_1
    iget-object p1, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    iget-object p2, p0, Lcom/inka/ncg2/i;->y:Lcom/inka/ncg2/i$d;

    iget-object p2, p2, Lcom/inka/ncg2/i$d;->b:[B

    invoke-virtual {p1, p2}, Lcom/inka/ncg/jni/NcgCoreWrapper;->isNcgHeader([B)I

    move-result p1

    if-ne p1, v2, :cond_2

    return v2

    :cond_2
    return v1

    .line 1756
    :cond_3
    invoke-virtual {v0, p1}, Lcom/inka/ncg/jni/NcgCoreWrapper;->isNcgFile(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_4

    return v2

    :cond_4
    return v1

    .line 1739
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You must call Ncg2Agent.init() method first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a([Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1082
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 1083
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "device model check : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NCG_Agent"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v0, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method static synthetic b(Lcom/inka/ncg2/i;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/inka/ncg2/i;->o:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/inka/ncg2/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/inka/ncg2/i;->s:Ljava/lang/String;

    return-object p1
.end method

.method private b(I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c(I)Ljava/lang/String;
    .locals 5

    .line 1870
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, p1

    .line 1871
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string p1, "\\."

    .line 1873
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1874
    array-length v2, p1

    if-le v2, v1, :cond_0

    .line 1875
    array-length v0, p1

    sub-int/2addr v0, v1

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    return-object v0

    .line 1880
    :cond_1
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, p1

    .line 1881
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 1882
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object p1, v3, p1

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v2, v3, v1

    const/4 v0, 0x2

    .line 1884
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "%s:%s[%s]"

    .line 1883
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c(Lcom/inka/ncg2/i;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/inka/ncg2/i;->s:Ljava/lang/String;

    return-object p0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    .line 1126
    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1134
    invoke-static {p1, p2}, Lcom/inka/ncg2/UrlConnectionRequester;->sendRequestByPostMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1135
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 1136
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 1138
    :cond_0
    new-instance p2, Lcom/inka/ncg2/Ncg2Exception;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Response from the %s is invalid."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_0
    move-exception p1

    .line 1129
    new-instance p2, Lcom/inka/ncg2/Ncg2Exception;

    invoke-direct {p2, p1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private c(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "IM-A870"

    const-string v1, "IM-A830"

    .line 383
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 385
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 1436
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/inka/ncg/jni/NcgCoreWrapper;->checkLicenseValidationByCID(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    .line 1476
    iget-object v1, p0, Lcom/inka/ncg2/i;->o:Ljava/lang/String;

    aput-object v1, v0, p1

    const/4 p1, 0x2

    .line 1482
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    const/4 p1, 0x3

    .line 1483
    invoke-static {p2}, Lcom/inka/ncg/jni/Ncg2CoreErrorCode;->getErrorMsgFromErrCode(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "Failed to check license. cid(%s)\nLicenseResultMessage : %s\nError Code : %s\nError Info : %s\n"

    .line 1476
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1484
    invoke-virtual {p0, p1}, Lcom/inka/ncg2/i;->b(Ljava/lang/String;)V

    .line 1486
    new-instance v0, Lcom/inka/ncg2/Ncg2Exception;

    invoke-direct {v0, p1, p2}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1439
    :sswitch_0
    sget-object p1, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->ValidLicense:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    return-object p1

    .line 1473
    :sswitch_1
    sget-object p1, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->NotAuthorizedAppID:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    return-object p1

    .line 1469
    :sswitch_2
    sget-object p1, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->DeviceTimeModified:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    return-object p1

    .line 1447
    :sswitch_3
    sget-object p1, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->ExceededPlayCount:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    return-object p1

    .line 1453
    :sswitch_4
    sget-object p1, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->ExpiredLicense:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    return-object p1

    .line 1450
    :sswitch_5
    sget-object p1, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->BeforeStartDate:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    return-object p1

    .line 1444
    :sswitch_6
    sget-object p1, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->NotExistLicense:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    return-object p1

    .line 1465
    :sswitch_7
    sget-object p1, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->OfflineNotSupported:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    return-object p1

    .line 1461
    :sswitch_8
    sget-object p1, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->OfflineStatusTooLong:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    return-object p1

    .line 1457
    :sswitch_9
    sget-object p1, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->RootedDeviceDisallowed:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0xffffefa -> :sswitch_9
        -0xffffef7 -> :sswitch_8
        -0xffffef0 -> :sswitch_7
        -0xffffbea -> :sswitch_6
        -0xffffb99 -> :sswitch_6
        -0xffff9fe -> :sswitch_6
        -0xffff9ef -> :sswitch_5
        -0xffff9ee -> :sswitch_4
        -0xffff9ed -> :sswitch_3
        -0xffff8ff -> :sswitch_2
        -0xffff8fe -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private d(Ljava/lang/String;)Lcom/inka/ncg2/i$d;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2HttpException;
        }
    .end annotation

    .line 1665
    new-instance v0, Lcom/inka/ncg2/i$d;

    invoke-direct {v0, p0}, Lcom/inka/ncg2/i$d;-><init>(Lcom/inka/ncg2/i;)V

    const/4 v1, 0x0

    .line 1667
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1668
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "Range"

    const-string v4, "bytes=0-2047"

    .line 1669
    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "GET"

    .line 1670
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v3, 0xbb8

    .line 1671
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1672
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1673
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 1674
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 1675
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc8

    if-eq v3, v5, :cond_1

    const/16 v5, 0xce

    if-ne v3, v5, :cond_0

    goto :goto_0

    .line 1698
    :cond_0
    new-instance v0, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-direct {v0, p1, v4, v3}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1699
    throw v0

    :cond_1
    :goto_0
    const-string v3, "Content-Range"

    .line 1679
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "/"

    .line 1681
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1682
    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 1683
    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/inka/ncg2/i$d;->d:J

    .line 1686
    :cond_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v3, 0x0

    .line 1689
    :cond_3
    iget-object v4, v0, Lcom/inka/ncg2/i$d;->b:[B

    rsub-int v5, v3, 0x800

    invoke-virtual {v1, v4, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_4

    add-int/2addr v3, v4

    const/16 v4, 0x7ff

    if-lt v3, v4, :cond_3

    .line 1696
    :cond_4
    iput v3, v0, Lcom/inka/ncg2/i$d;->c:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_5

    .line 1708
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1710
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    .line 1715
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v2, v1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v2, v1

    .line 1702
    :goto_2
    :try_start_3
    new-instance v3, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-direct {v3, v0, p1, v4, v5}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1703
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_7

    .line 1708
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 1710
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_4
    if-eqz v2, :cond_8

    .line 1715
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw p1
.end method

.method static synthetic d(Lcom/inka/ncg2/i;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/inka/ncg2/i;->t:Z

    return p0
.end method

.method static synthetic e(Lcom/inka/ncg2/i;)Ljava/util/TimerTask;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/inka/ncg2/i;->d:Ljava/util/TimerTask;

    return-object p0
.end method

.method private e()V
    .locals 3

    const-string v0, "NCG_Agent"

    const-string v1, "-----------------------------------------------------"

    .line 128
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "NCG_SDK_JAR_VERSION : 20190508"

    .line 129
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic f(Lcom/inka/ncg2/i;)Ljava/util/Timer;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/inka/ncg2/i;->e:Ljava/util/Timer;

    return-object p0
.end method

.method private f()Z
    .locals 7

    const-string v0, "com.noshufou.android.su"

    const-string v1, "com.thirdparty.superuser"

    const-string v2, "eu.chainfire.supersu"

    const-string v3, "eu.chainfire.supersu.pro"

    const-string v4, "com.koushikdutta.superuser"

    const-string v5, "com.zachspong.temprootremovejb"

    const-string v6, "com.ramdroid.appquarantine"

    .line 1526
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_1

    .line 1537
    iget-object v3, p0, Lcom/inka/ncg2/i;->n:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1540
    :try_start_0
    aget-object v4, v0, v2

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static synthetic g(Lcom/inka/ncg2/i;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/inka/ncg2/i;->n:Landroid/content/Context;

    return-object p0
.end method

.method private g()Z
    .locals 7

    .line 2058
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2061
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 2062
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 2065
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/devices/virtual/misc/bst_gps"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2066
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/devices/virtual/misc/bst_ime"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2067
    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/devices/virtual/misc/bstpgaipc"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v6, "generic_x86"

    .line 2069
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sdk_google_phone_x86"

    .line 2070
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Emulator"

    .line 2071
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2072
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

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


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2HttpException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    const/16 v0, 0x400

    .line 1153
    invoke-static {p1, v0}, Lcom/inka/ncg/jni/Util;->readFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "<cid>"

    .line 1154
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v1, "</cid>"

    .line 1156
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x5

    .line 1157
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method protected a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 1109
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-object v0

    .line 1112
    :cond_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1117
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    return-object v0
.end method

.method a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1905
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    if-eqz v0, :cond_1

    .line 1911
    invoke-virtual {p0}, Lcom/inka/ncg2/i;->b()V

    .line 1913
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1914
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1915
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1916
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1917
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1918
    iget-object v3, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {v3, v1, v2}, Lcom/inka/ncg/jni/NcgCoreWrapper;->addHttpCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void

    .line 1906
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must call Ncg2Agent.init() method first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1945
    invoke-static {}, Lcom/inka/ncg2/a/f;->h()Lcom/inka/ncg2/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inka/ncg2/a/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1946
    invoke-virtual {p0, p1, p2}, Lcom/inka/ncg2/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public acquireLicenseByCID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2ServerResponseErrorException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    const-string v3, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 684
    invoke-virtual/range {v0 .. v6}, Lcom/inka/ncg2/i;->acquireLicenseByCID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public acquireLicenseByCID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2ServerResponseErrorException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 691
    invoke-virtual/range {v0 .. v6}, Lcom/inka/ncg2/i;->acquireLicenseByCID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public acquireLicenseByCID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2ServerResponseErrorException;,
            Lcom/inka/ncg2/Ncg2HttpException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v15, p5

    .line 698
    iget-object v0, v7, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    if-eqz v0, :cond_12

    .line 706
    iget-object v0, v7, Lcom/inka/ncg2/i;->m:Ljava/util/Map;

    .line 707
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    const-string v0, "PKI"

    if-nez v17, :cond_0

    move-object v14, v0

    goto :goto_0

    .line 716
    :cond_0
    iget-object v1, v7, Lcom/inka/ncg2/i;->m:Ljava/util/Map;

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v14, v1

    :goto_0
    const-string v13, "DH"

    .line 719
    invoke-virtual {v14, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 720
    new-instance v8, Lcom/inka/ncg2/i$a;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/inka/ncg2/i$a;-><init>(Lcom/inka/ncg2/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 721
    invoke-virtual {v8}, Lcom/inka/ncg2/i$a;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 723
    invoke-virtual/range {p0 .. p0}, Lcom/inka/ncg2/i;->updateSecureTime()V

    :cond_1
    move-object v10, v13

    move-object v9, v15

    goto :goto_1

    .line 726
    :cond_2
    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    .line 727
    iget-object v8, v7, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    iget-object v0, v7, Lcom/inka/ncg2/i;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Lcom/inka/ncg2/i;->c:Lcom/inka/ncg2/h;

    move-object/from16 v9, p2

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object v6, v13

    move-object v13, v0

    move-object v0, v14

    move-object/from16 v14, p5

    move-object v5, v15

    move/from16 v15, p6

    move-object/from16 v16, v1

    invoke-virtual/range {v8 .. v16}, Lcom/inka/ncg/jni/NcgCoreWrapper;->downloadLicense(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/inka/ncg/jni/HttpRequestJniCallback;)I

    move-result v1

    const v2, -0xfffdffc

    if-ne v1, v2, :cond_4

    .line 734
    new-instance v8, Lcom/inka/ncg2/i$a;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object v9, v5

    move-object/from16 v5, p5

    move-object v10, v6

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/inka/ncg2/i$a;-><init>(Lcom/inka/ncg2/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 735
    invoke-virtual {v8}, Lcom/inka/ncg2/i$a;->a()I

    move-result v0

    if-nez v0, :cond_3

    .line 737
    invoke-virtual/range {p0 .. p0}, Lcom/inka/ncg2/i;->updateSecureTime()V

    :cond_3
    move-object v14, v10

    goto :goto_1

    :cond_4
    move-object v9, v5

    move-object v10, v6

    move-object v14, v0

    move v0, v1

    :goto_1
    if-nez v17, :cond_5

    .line 750
    iget-object v1, v7, Lcom/inka/ncg2/i;->m:Ljava/util/Map;

    invoke-interface {v1, v9, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    :cond_5
    iget-object v1, v7, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {v1}, Lcom/inka/ncg/jni/NcgCoreWrapper;->getLastErrorMsg()Ljava/lang/String;

    move-result-object v1

    const v2, -0xffffef8

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v0, v2, :cond_f

    const v2, -0xfffdffd

    const/4 v8, 0x4

    if-ne v0, v2, :cond_7

    .line 769
    iget-object v0, v7, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {v0}, Lcom/inka/ncg/jni/NcgCoreWrapper;->getLastServerErrorCode()I

    move-result v11

    .line 770
    iget-object v0, v7, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {v0}, Lcom/inka/ncg/jni/NcgCoreWrapper;->getLastServerErrorMsg()Ljava/lang/String;

    move-result-object v12

    .line 772
    iget-object v0, v7, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {v0}, Lcom/inka/ncg/jni/NcgCoreWrapper;->getLastRequestRowData()Ljava/lang/String;

    move-result-object v13

    .line 773
    iget-object v0, v7, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {v0}, Lcom/inka/ncg/jni/NcgCoreWrapper;->getLastRequestPlainData()Ljava/lang/String;

    move-result-object v14

    .line 774
    iget-object v0, v7, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {v0}, Lcom/inka/ncg/jni/NcgCoreWrapper;->getLastResponseRowData()Ljava/lang/String;

    move-result-object v15

    .line 776
    new-instance v0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    .line 782
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v6

    aput-object v12, v2, v5

    aput-object v1, v2, v4

    aput-object v14, v2, v3

    aput-object v13, v2, v8

    const/4 v1, 0x5

    aput-object v15, v2, v1

    const-string v1, "[PKI] Failed to acquire ncg license. ErrorCode: [%d], ErrorMsg: [%s], lastErrorMsg : [%s] \nRequest Data : [%s]\n\nRequest Row Data : [%s]\n\nResponse Row Data : [%s]\n\n"

    .line 777
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    iget-object v1, v7, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    if-eqz v1, :cond_6

    .line 796
    invoke-interface {v1, v0}, Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;->logException(Ljava/lang/Exception;)V

    .line 798
    :cond_6
    throw v0

    :cond_7
    const v2, -0xfffe000

    if-eq v0, v2, :cond_d

    const v2, -0xfffdfff

    if-ne v0, v2, :cond_8

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_c

    .line 816
    invoke-virtual {v14, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_a

    .line 817
    invoke-direct {v7, v0}, Lcom/inka/ncg2/i;->a(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 820
    iget-object v1, v7, Lcom/inka/ncg2/i;->o:Ljava/lang/String;

    .line 823
    new-instance v2, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;

    new-array v3, v4, [Ljava/lang/Object;

    .line 826
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v1, v3, v5

    const-string v4, "[DH] Failed to acquire ncg license. ErrorCode: [%d], ErrorMsg: [%s] "

    .line 824
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 828
    iget-object v0, v7, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    if-eqz v0, :cond_9

    .line 829
    invoke-interface {v0, v2}, Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;->logException(Ljava/lang/Exception;)V

    .line 831
    :cond_9
    throw v2

    :cond_a
    new-array v2, v4, [Ljava/lang/Object;

    .line 837
    invoke-static {v0}, Lcom/inka/ncg/jni/Ncg2CoreErrorCode;->getErrorMsgFromErrCode(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v1, v2, v5

    const-string v1, "Failed to acquire ncg license by cid\nErrorMsg : [%s], LastError: [%s]"

    .line 834
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 839
    new-instance v2, Lcom/inka/ncg2/Ncg2Exception;

    invoke-direct {v2, v1, v0}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;I)V

    .line 840
    iget-object v0, v7, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    if-eqz v0, :cond_b

    .line 841
    invoke-interface {v0, v2}, Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;->logException(Ljava/lang/Exception;)V

    .line 843
    :cond_b
    throw v2

    :cond_c
    return-void

    :cond_d
    :goto_2
    new-array v2, v8, [Ljava/lang/Object;

    .line 806
    invoke-static {v0}, Lcom/inka/ncg/jni/Ncg2CoreErrorCode;->getErrorMsgFromErrCode(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    aput-object v1, v2, v5

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v0, v2, v4

    .line 808
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Failed to acquire ncg license.\nErrorMsg: [%s]\nNative Error Msg : [%s]\nAndroid OS Version : [%s]\nSDCard Path : [%s]\n"

    .line 801
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 809
    new-instance v1, Lcom/inka/ncg2/Ncg2Exception;

    invoke-direct {v1, v0}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;)V

    .line 810
    iget-object v0, v7, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    if-eqz v0, :cond_e

    .line 811
    invoke-interface {v0, v1}, Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;->logException(Ljava/lang/Exception;)V

    .line 813
    :cond_e
    throw v1

    :cond_f
    new-array v2, v3, [Ljava/lang/Object;

    .line 759
    invoke-static {v0}, Lcom/inka/ncg/jni/Ncg2CoreErrorCode;->getErrorMsgFromErrCode(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    aput-object v1, v2, v5

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v0, v2, v4

    const-string v0, "Network error occurred.\nFailed to acquire ncg license.\nErrorMsg: [%s]\nNative Error Msg : [%s]\nAndroid OS Version : [%s]\n"

    .line 754
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 762
    new-instance v1, Lcom/inka/ncg2/Ncg2HttpException;

    const/4 v2, -0x1

    invoke-direct {v1, v9, v0, v2}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 763
    throw v1

    :cond_10
    move-object v0, v14

    .line 741
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown secure channel method ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 743
    iget-object v0, v7, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    if-eqz v0, :cond_11

    .line 744
    invoke-interface {v0, v1}, Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;->logException(Ljava/lang/Exception;)V

    .line 746
    :cond_11
    throw v1

    .line 699
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call Ncg2Agent.init() method first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public acquireLicenseByPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 988
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/inka/ncg2/i;->acquireLicenseByPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public acquireLicenseByPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2ServerResponseErrorException;,
            Lcom/inka/ncg2/Ncg2HttpException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 995
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    if-eqz v0, :cond_0

    .line 1000
    invoke-virtual {p0, p1}, Lcom/inka/ncg2/i;->getHeaderInfo(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;

    move-result-object p1

    .line 1001
    iget-object v1, p1, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->contentID:Ljava/lang/String;

    iget-object v3, p1, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->siteID:Ljava/lang/String;

    iget-object v5, p1, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->acquisitionURL:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p2

    move-object v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/inka/ncg2/i;->acquireLicenseByCID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 996
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You must call Ncg2Agent.init() method first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public acquireLicenseByToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2ServerResponseErrorException;,
            Lcom/inka/ncg2/Ncg2HttpException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p5

    .line 853
    iget-object v1, v0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    if-eqz v1, :cond_e

    .line 861
    iget-object v1, v0, Lcom/inka/ncg2/i;->m:Ljava/util/Map;

    .line 862
    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    const-string v1, "PKI"

    if-nez v11, :cond_0

    move-object v12, v1

    goto :goto_0

    .line 871
    :cond_0
    iget-object v2, v0, Lcom/inka/ncg2/i;->m:Ljava/util/Map;

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v12, v2

    .line 874
    :goto_0
    invoke-virtual {v12, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    .line 875
    iget-object v1, v0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    iget-object v2, v0, Lcom/inka/ncg2/i;->n:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v9, v0, Lcom/inka/ncg2/i;->c:Lcom/inka/ncg2/h;

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lcom/inka/ncg/jni/NcgCoreWrapper;->downloadLicenseByToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/inka/ncg/jni/HttpRequestJniCallback;)I

    move-result v1

    if-nez v11, :cond_1

    .line 887
    iget-object v2, v0, Lcom/inka/ncg2/i;->m:Ljava/util/Map;

    invoke-interface {v2, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    :cond_1
    iget-object v2, v0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {v2}, Lcom/inka/ncg/jni/NcgCoreWrapper;->getLastErrorMsg()Ljava/lang/String;

    move-result-object v2

    const v3, -0xffffef8

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v1, v3, :cond_b

    const v3, -0xfffdffd

    const/4 v8, 0x4

    if-ne v1, v3, :cond_3

    .line 906
    iget-object v1, v0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {v1}, Lcom/inka/ncg/jni/NcgCoreWrapper;->getLastServerErrorCode()I

    move-result v11

    .line 907
    iget-object v1, v0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {v1}, Lcom/inka/ncg/jni/NcgCoreWrapper;->getLastServerErrorMsg()Ljava/lang/String;

    move-result-object v12

    .line 909
    iget-object v1, v0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {v1}, Lcom/inka/ncg/jni/NcgCoreWrapper;->getLastRequestRowData()Ljava/lang/String;

    move-result-object v13

    .line 910
    iget-object v1, v0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {v1}, Lcom/inka/ncg/jni/NcgCoreWrapper;->getLastRequestPlainData()Ljava/lang/String;

    move-result-object v14

    .line 911
    iget-object v1, v0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {v1}, Lcom/inka/ncg/jni/NcgCoreWrapper;->getLastResponseRowData()Ljava/lang/String;

    move-result-object v15

    .line 913
    new-instance v1, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    .line 919
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v7

    aput-object v12, v3, v6

    aput-object v2, v3, v5

    aput-object v14, v3, v4

    aput-object v13, v3, v8

    const/4 v2, 0x5

    aput-object v15, v3, v2

    const-string v2, "[PKI] Failed to acquire ncg license. ErrorCode: [%d], ErrorMsg: [%s], lastErrorMsg : [%s] \nRequest Data : [%s]\n\nRequest Row Data : [%s]\n\nResponse Row Data : [%s]\n\n"

    .line 914
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    iget-object v2, v0, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    if-eqz v2, :cond_2

    .line 933
    invoke-interface {v2, v1}, Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;->logException(Ljava/lang/Exception;)V

    .line 935
    :cond_2
    throw v1

    :cond_3
    const v3, -0xfffe000

    if-eq v1, v3, :cond_9

    const v3, -0xfffdfff

    if-ne v1, v3, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_8

    const-string v3, "DH"

    .line 953
    invoke-virtual {v12, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    .line 954
    invoke-direct {v0, v1}, Lcom/inka/ncg2/i;->a(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 957
    iget-object v2, v0, Lcom/inka/ncg2/i;->o:Ljava/lang/String;

    .line 960
    new-instance v3, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;

    new-array v4, v5, [Ljava/lang/Object;

    .line 963
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v2, v4, v6

    const-string v5, "[DH] Failed to acquire ncg license. ErrorCode: [%d], ErrorMsg: [%s] "

    .line 961
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 965
    iget-object v1, v0, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    if-eqz v1, :cond_5

    .line 966
    invoke-interface {v1, v3}, Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;->logException(Ljava/lang/Exception;)V

    .line 968
    :cond_5
    throw v3

    :cond_6
    new-array v3, v5, [Ljava/lang/Object;

    .line 974
    invoke-static {v1}, Lcom/inka/ncg/jni/Ncg2CoreErrorCode;->getErrorMsgFromErrCode(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v2, v3, v6

    const-string v2, "Failed to acquire ncg license by cid\nErrorMsg : [%s], LastError: [%s]"

    .line 971
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 976
    new-instance v3, Lcom/inka/ncg2/Ncg2Exception;

    invoke-direct {v3, v2, v1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;I)V

    .line 977
    iget-object v1, v0, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    if-eqz v1, :cond_7

    .line 978
    invoke-interface {v1, v3}, Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;->logException(Ljava/lang/Exception;)V

    .line 980
    :cond_7
    throw v3

    :cond_8
    return-void

    :cond_9
    :goto_1
    new-array v3, v8, [Ljava/lang/Object;

    .line 943
    invoke-static {v1}, Lcom/inka/ncg/jni/Ncg2CoreErrorCode;->getErrorMsgFromErrCode(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    aput-object v2, v3, v6

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v1, v3, v5

    .line 945
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "Failed to acquire ncg license.\nErrorMsg: [%s]\nNative Error Msg : [%s]\nAndroid OS Version : [%s]\nSDCard Path : [%s]\n"

    .line 938
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 946
    new-instance v2, Lcom/inka/ncg2/Ncg2Exception;

    invoke-direct {v2, v1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;)V

    .line 947
    iget-object v1, v0, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    if-eqz v1, :cond_a

    .line 948
    invoke-interface {v1, v2}, Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;->logException(Ljava/lang/Exception;)V

    .line 950
    :cond_a
    throw v2

    :cond_b
    new-array v3, v4, [Ljava/lang/Object;

    .line 896
    invoke-static {v1}, Lcom/inka/ncg/jni/Ncg2CoreErrorCode;->getErrorMsgFromErrCode(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    aput-object v2, v3, v6

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v1, v3, v5

    const-string v1, "Network error occurred.\nFailed to acquire ncg license.\nErrorMsg: [%s]\nNative Error Msg : [%s]\nAndroid OS Version : [%s]\n"

    .line 891
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 899
    new-instance v2, Lcom/inka/ncg2/Ncg2HttpException;

    const/4 v3, -0x1

    invoke-direct {v2, v10, v1, v3}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 900
    throw v2

    .line 878
    :cond_c
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown secure channel method ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 880
    iget-object v2, v0, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    if-eqz v2, :cond_d

    .line 881
    invoke-interface {v2, v1}, Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;->logException(Ljava/lang/Exception;)V

    .line 883
    :cond_d
    throw v1

    .line 854
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You must call Ncg2Agent.init() method first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addLicense(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 2822
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/inka/ncg/jni/NcgCoreWrapper;->addLicense(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addLicense(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    move-object v0, p0

    .line 2829
    iget-object v1, v0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/inka/ncg/jni/NcgCoreWrapper;->addLicense(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)I

    return-void
.end method

.method protected b()V
    .locals 2

    .line 1930
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    if-eqz v0, :cond_0

    .line 1934
    invoke-virtual {v0}, Lcom/inka/ncg/jni/NcgCoreWrapper;->clearHttpCustomHeader()V

    return-void

    .line 1931
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call Ncg2Agent.init() method first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    .line 1845
    iget-boolean v0, p0, Lcom/inka/ncg2/i;->p:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/inka/ncg2/i;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "NA]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NCG_Agent"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    .line 1959
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/inka/ncg2/i;->getLicenseInfoByCID(Ljava/lang/String;Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;

    move-result-object p1

    .line 1960
    iget p2, p1, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->opt_externalDisplay:I

    .line 1961
    iget p1, p1, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->abd_externaldisplay:I
    :try_end_0
    .catch Lcom/inka/ncg2/Ncg2Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 1965
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v2, 0x64

    .line 1966
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v3, 0x2

    const/16 v5, 0x61

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    const-string v3, "mExternalDisplay = %d,%d,%d"

    .line 1965
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/inka/ncg2/i;->b(Ljava/lang/String;)V

    if-eq p2, v2, :cond_1

    if-ne p1, v2, :cond_0

    .line 1968
    invoke-virtual {p0}, Lcom/inka/ncg2/i;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    return v4

    :catch_0
    return v0
.end method

.method public c()Z
    .locals 1

    .line 2019
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {v0}, Lcom/inka/ncg/jni/NcgCoreWrapper;->isDeviceRooted()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "isDeviceRooted() : false"

    .line 2020
    invoke-virtual {p0, v0}, Lcom/inka/ncg2/i;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "isDeviceRooted() : true"

    .line 2023
    invoke-virtual {p0, v0}, Lcom/inka/ncg2/i;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public checkLicenseValid(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2HttpException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    const-string v0, ".m3u8"

    .line 1401
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1402
    new-instance v0, Lcom/inka/ncg2/M3U8KeyFileExtractor;

    invoke-direct {v0}, Lcom/inka/ncg2/M3U8KeyFileExtractor;-><init>()V

    .line 1404
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/inka/ncg2/M3U8KeyFileExtractor;->doExtract(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1412
    invoke-virtual {v0}, Lcom/inka/ncg2/M3U8KeyFileExtractor;->isNcgContent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1414
    invoke-virtual {v0}, Lcom/inka/ncg2/M3U8KeyFileExtractor;->getCID()Ljava/lang/String;

    move-result-object p1

    .line 1415
    invoke-virtual {v0}, Lcom/inka/ncg2/M3U8KeyFileExtractor;->getSiteID()Ljava/lang/String;

    move-result-object v0

    .line 1420
    invoke-virtual {p0, p1, v0}, Lcom/inka/ncg2/i;->checkLicenseValidByCID(Ljava/lang/String;Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    move-result-object p1

    return-object p1

    .line 1417
    :cond_0
    new-instance v0, Lcom/inka/ncg2/Ncg2InvalidNcgFileException;

    invoke-direct {v0, p1}, Lcom/inka/ncg2/Ncg2InvalidNcgFileException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception p1

    .line 1406
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1407
    new-instance v0, Lcom/inka/ncg2/Ncg2Exception;

    invoke-direct {v0, p1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1423
    :cond_1
    invoke-virtual {p0, p1}, Lcom/inka/ncg2/i;->getHeaderInfo(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;

    move-result-object p1

    .line 1424
    iget-object v0, p1, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->contentID:Ljava/lang/String;

    iget-object p1, p1, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->siteID:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/inka/ncg2/i;->checkLicenseValidByCID(Ljava/lang/String;Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    move-result-object p1

    return-object p1
.end method

.method public checkLicenseValidByCID(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    const-string v0, ""

    .line 1432
    invoke-virtual {p0, p1, v0}, Lcom/inka/ncg2/i;->checkLicenseValidByCID(Ljava/lang/String;Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    move-result-object p1

    return-object p1
.end method

.method public checkLicenseValidByCID(Ljava/lang/String;Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 1493
    invoke-virtual {p0, p1, p2}, Lcom/inka/ncg2/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1494
    sget-object p1, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->ExternalDeviceDisallowed:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    return-object p1

    .line 1496
    :cond_0
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    if-eqz v0, :cond_3

    .line 1501
    invoke-virtual {p0, p1, p2}, Lcom/inka/ncg2/i;->getLicenseInfoByCID(Ljava/lang/String;Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1502
    iget v0, v0, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->abnormal_device:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 1503
    invoke-direct {p0}, Lcom/inka/ncg2/i;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1506
    sget-object p1, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->RootedDeviceDisallowed:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    return-object p1

    .line 1511
    :cond_1
    iget-boolean v0, p0, Lcom/inka/ncg2/i;->a:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1512
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetector;->getInstance()Lcom/inka/ncg2/ScreenRecorderDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inka/ncg2/ScreenRecorderDetector;->detect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1513
    sget-object p1, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->ScreenRecorderDetected:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    .line 1514
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 1515
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetector;->getInstance()Lcom/inka/ncg2/ScreenRecorderDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inka/ncg2/ScreenRecorderDetector;->getDetectedAppName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppName"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetector;->getInstance()Lcom/inka/ncg2/ScreenRecorderDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inka/ncg2/ScreenRecorderDetector;->getDetectedAppPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppPackageName"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    invoke-virtual {p1, p2}, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->setExtraData(Ljava/util/HashMap;)V

    return-object p1

    .line 1521
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/inka/ncg2/i;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    move-result-object p1

    return-object p1

    .line 1497
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You must call Ncg2Agent.init() method first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkMethodTypeA(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    if-eqz v0, :cond_1

    .line 601
    invoke-virtual {v0, p1}, Lcom/inka/ncg/jni/NcgCoreWrapper;->checkMethodTypeA(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 597
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must call Ncg2Agent.init() method first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createNcgFile()Lcom/inka/ncg2/Ncg2Agent$NcgFile;
    .locals 1

    .line 1621
    new-instance v0, Lcom/inka/ncg2/i$c;

    invoke-direct {v0, p0}, Lcom/inka/ncg2/i$c;-><init>(Lcom/inka/ncg2/i;)V

    return-object v0
.end method

.method public d()Z
    .locals 9

    .line 2030
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "com.android.emu.coreservice"

    .line 2031
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2033
    iget-object v1, p0, Lcom/inka/ncg2/i;->n:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const v2, 0x7fffffff

    .line 2034
    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2036
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "NCG_Agent"

    const/4 v6, 0x1

    if-ge v3, v4, :cond_2

    .line 2037
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2038
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v8, v6, :cond_0

    .line 2039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2046
    :cond_2
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {v0}, Lcom/inka/ncg/jni/NcgCoreWrapper;->isVirtualMachine()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "virtual false"

    .line 2047
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v0, "virtual true"

    .line 2050
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method public decreasePlayCount(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2HttpException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 2006
    invoke-virtual {p0}, Lcom/inka/ncg2/i;->createNcgFile()Lcom/inka/ncg2/Ncg2Agent$NcgFile;

    move-result-object v0

    const/4 v1, 0x1

    .line 2008
    :try_start_0
    invoke-interface {v0, p1, v1}, Lcom/inka/ncg2/Ncg2Agent$NcgFile;->open(Ljava/lang/String;Z)V

    .line 2009
    invoke-interface {v0}, Lcom/inka/ncg2/Ncg2Agent$NcgFile;->decreasePlayCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2012
    invoke-interface {v0}, Lcom/inka/ncg2/Ncg2Agent$NcgFile;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lcom/inka/ncg2/Ncg2Agent$NcgFile;->close()V

    throw p1
.end method

.method public disableLog()V
    .locals 2

    .line 1175
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1179
    iput-boolean v1, p0, Lcom/inka/ncg2/i;->p:Z

    .line 1180
    invoke-virtual {v0, v1}, Lcom/inka/ncg/jni/NcgCoreWrapper;->enableLog(I)V

    .line 1181
    invoke-static {}, Lcom/inka/ncg2/a/b;->g()V

    return-void

    .line 1176
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call Ncg2Agent.init() method first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public downloadAndDecryptByNcgSdkPrivateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;,
            Lcom/inka/ncg2/Ncg2HttpException;
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 481
    iget-object v2, p0, Lcom/inka/ncg2/i;->c:Lcom/inka/ncg2/h;

    invoke-virtual {v0, p1, v2, v1}, Lcom/inka/ncg/jni/NcgCoreWrapper;->downloadAndDecryptByNcgSdkPrivateKey(Ljava/lang/String;Lcom/inka/ncg/jni/HttpRequestJniCallback;[Ljava/lang/String;)I

    move-result v0

    const v2, -0xffffef8

    const-string v3, "Failed to send a custom request : "

    if-eq v0, v2, :cond_2

    if-eqz v0, :cond_1

    .line 489
    invoke-static {v0}, Lcom/inka/ncg/jni/Ncg2CoreErrorCode;->getErrorMsgFromErrCode(I)Ljava/lang/String;

    move-result-object p1

    .line 490
    new-instance v1, Lcom/inka/ncg2/Ncg2Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;I)V

    .line 491
    iget-object p1, p0, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    if-eqz p1, :cond_0

    .line 492
    invoke-interface {p1, v1}, Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;->logException(Ljava/lang/Exception;)V

    .line 494
    :cond_0
    throw v1

    :cond_1
    const/4 p1, 0x0

    .line 497
    aget-object p1, v1, p1

    return-object p1

    .line 483
    :cond_2
    invoke-static {v0}, Lcom/inka/ncg/jni/Ncg2CoreErrorCode;->getErrorMsgFromErrCode(I)Ljava/lang/String;

    move-result-object v0

    .line 484
    new-instance v1, Lcom/inka/ncg2/Ncg2HttpException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-direct {v1, p1, v0, v2}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 486
    throw v1

    .line 476
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must call Ncg2Agent.init() method first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public enableDirectlyDeviceID()V
    .locals 1

    const/4 v0, 0x0

    .line 1187
    iput-boolean v0, p0, Lcom/inka/ncg2/i;->u:Z

    return-void
.end method

.method public enableLog()V
    .locals 2

    .line 1164
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1168
    iput-boolean v1, p0, Lcom/inka/ncg2/i;->p:Z

    .line 1169
    invoke-virtual {v0, v1}, Lcom/inka/ncg/jni/NcgCoreWrapper;->enableLog(I)V

    .line 1170
    invoke-static {}, Lcom/inka/ncg2/a/b;->f()V

    return-void

    .line 1165
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call Ncg2Agent.init() method first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enableScreenRecorderDetecting(Z)V
    .locals 0

    .line 2844
    iput-boolean p1, p0, Lcom/inka/ncg2/i;->a:Z

    return-void
.end method

.method public getCurrentSecureTime()Ljava/lang/String;
    .locals 2

    .line 1991
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    if-eqz v0, :cond_0

    .line 1996
    invoke-virtual {v0}, Lcom/inka/ncg/jni/NcgCoreWrapper;->getCurrentSecureTime()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1992
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call Ncg2Agent.init() method first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHeaderInfo(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;,
            Lcom/inka/ncg2/Ncg2HttpException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1556
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1560
    new-instance v0, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;

    invoke-direct {v0, p0}, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;-><init>(Lcom/inka/ncg2/Ncg2Agent;)V

    const-string v1, ".m3u8"

    .line 1561
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1562
    new-instance v1, Lcom/inka/ncg2/M3U8KeyFileExtractor;

    invoke-direct {v1}, Lcom/inka/ncg2/M3U8KeyFileExtractor;-><init>()V

    .line 1564
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/inka/ncg2/M3U8KeyFileExtractor;->doExtract(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1570
    invoke-virtual {v1}, Lcom/inka/ncg2/M3U8KeyFileExtractor;->getKeyURL()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1566
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1567
    new-instance v0, Lcom/inka/ncg2/Ncg2Exception;

    invoke-direct {v0, p1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    const/16 v1, 0x400

    .line 1573
    invoke-static {p1, v1}, Lcom/inka/ncg/jni/Util;->readFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const-string v1, "cid"

    .line 1579
    invoke-static {p1, v1}, Lcom/inka/ncg/jni/Util;->parserTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->contentID:Ljava/lang/String;

    const-string v1, "sid"

    .line 1580
    invoke-static {p1, v1}, Lcom/inka/ncg/jni/Util;->parserTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->siteID:Ljava/lang/String;

    .line 1581
    iget-object v1, v0, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->siteID:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->siteID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->siteID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->siteID:Ljava/lang/String;

    :cond_2
    const-string v1, "url"

    .line 1584
    invoke-static {p1, v1}, Lcom/inka/ncg/jni/Util;->parserTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->acquisitionURL:Ljava/lang/String;

    const-string v1, "source"

    .line 1585
    invoke-static {p1, v1}, Lcom/inka/ncg/jni/Util;->parserTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->serviceProvider:Ljava/lang/String;

    const-string v1, "packdate"

    .line 1586
    invoke-static {p1, v1}, Lcom/inka/ncg/jni/Util;->parserTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->packageDate:Ljava/lang/String;

    const-string v1, "encryption"

    const-string v2, "binding"

    .line 1587
    invoke-static {p1, v1, v2}, Lcom/inka/ncg/jni/Util;->parserAttr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->binding:Ljava/lang/String;

    .line 1588
    iget-object p1, v0, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->binding:Ljava/lang/String;

    if-nez p1, :cond_3

    const-string p1, ""

    .line 1589
    iput-object p1, v0, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->binding:Ljava/lang/String;

    :cond_3
    return-object v0

    .line 1557
    :cond_4
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public getHttpRequestCallback()Lcom/inka/ncg2/Ncg2Agent$HttpRequestCallback;
    .locals 1

    .line 1611
    iget-object v0, p0, Lcom/inka/ncg2/i;->c:Lcom/inka/ncg2/h;

    if-eqz v0, :cond_0

    .line 1612
    iget-object v0, v0, Lcom/inka/ncg2/h;->d:Lcom/inka/ncg2/Ncg2Agent$HttpRequestCallback;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLicenseInfo(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2Exception;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1389
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1393
    invoke-virtual {p0, p1}, Lcom/inka/ncg2/i;->getHeaderInfo(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;

    move-result-object p1

    .line 1394
    iget-object v0, p1, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->contentID:Ljava/lang/String;

    iget-object p1, p1, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->siteID:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/inka/ncg2/i;->getLicenseInfoByCID(Ljava/lang/String;Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;

    move-result-object p1

    return-object p1

    .line 1390
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public getLicenseInfoByCID(Ljava/lang/String;Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 1310
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x15

    new-array v10, v0, [C

    new-array v11, v0, [C

    const/4 v12, 0x1

    new-array v13, v12, [I

    new-array v14, v12, [J

    new-array v15, v12, [J

    new-array v9, v12, [J

    const/16 v0, 0x100

    new-array v8, v0, [C

    const/16 v16, 0x0

    aput-char v16, v8, v16

    .line 1324
    new-instance v7, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;

    move-object/from16 v6, p0

    invoke-direct {v7, v6}, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;-><init>(Lcom/inka/ncg2/Ncg2Agent;)V

    .line 1325
    invoke-direct/range {p0 .. p2}, Lcom/inka/ncg2/i;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    move-result-object v0

    iput-object v0, v7, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->licenseValidation:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    .line 1328
    iget-object v0, v7, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->licenseValidation:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    sget-object v1, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->NotExistLicense:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    if-ne v0, v1, :cond_0

    return-object v7

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v10

    move-object v4, v11

    move-object v5, v13

    move-object v6, v14

    move-object v12, v7

    move-object v7, v15

    move-object/from16 p1, v8

    move-object v8, v9

    move-object/from16 v17, v9

    move-object/from16 v9, p1

    .line 1332
    invoke-direct/range {v0 .. v9}, Lcom/inka/ncg2/i;->a(Ljava/lang/String;Ljava/lang/String;[C[C[I[J[J[J[C)I

    .line 1337
    invoke-static {v10}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->playStartDate:Ljava/lang/String;

    .line 1338
    invoke-static {v11}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->playEndDate:Ljava/lang/String;

    .line 1339
    aget-wide v0, v14, v16

    long-to-int v1, v0

    iput v1, v12, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->playDurationHour:I

    .line 1340
    aget-wide v0, v15, v16

    long-to-int v1, v0

    iput v1, v12, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->playTotalCount:I

    .line 1341
    aget-wide v0, v17, v16

    long-to-int v1, v0

    iput v1, v12, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->playRemainCount:I

    .line 1343
    aget v0, v13, v16

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "online"

    .line 1344
    iput-object v0, v12, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->playVerificationMethod:Ljava/lang/String;

    :goto_0
    move-object/from16 v0, p1

    goto :goto_1

    .line 1345
    :cond_1
    aget v0, v13, v16

    if-nez v0, :cond_2

    const-string v0, "offline"

    .line 1346
    iput-object v0, v12, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->playVerificationMethod:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "(undefined)"

    .line 1348
    iput-object v0, v12, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->playVerificationMethod:Ljava/lang/String;

    goto :goto_0

    .line 1351
    :goto_1
    aget-char v1, v0, v16

    if-eqz v1, :cond_6

    .line 1352
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    const-string v0, ","

    .line 1353
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1354
    aget-object v1, v0, v16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x61

    const/16 v3, 0x64

    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    .line 1355
    iput v2, v12, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->opt_externalDisplay:I

    goto :goto_2

    .line 1358
    :cond_3
    iput v3, v12, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->opt_externalDisplay:I

    .line 1361
    :goto_2
    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v12, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->opt_aps:I

    const/4 v1, 0x2

    .line 1362
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v12, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->opt_cgms_a:I

    const/4 v1, 0x3

    .line 1363
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v12, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->opt_cavendish:I

    const/4 v1, 0x4

    .line 1364
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v12, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->opt_hdcp:I

    const/4 v1, 0x5

    .line 1366
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 1367
    iput v2, v12, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->abnormal_device:I

    goto :goto_3

    .line 1370
    :cond_4
    iput v3, v12, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->abnormal_device:I

    :goto_3
    const/4 v1, 0x6

    .line 1373
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v12, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->abd_sendreport:I

    const/4 v1, 0x7

    .line 1374
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 1375
    iput v2, v12, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->abd_externaldisplay:I

    goto :goto_4

    .line 1378
    :cond_5
    iput v3, v12, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->abd_externaldisplay:I

    :cond_6
    :goto_4
    return-object v12

    .line 1311
    :cond_7
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0
.end method

.method public getLocalWebServer()Lcom/inka/ncg2/Ncg2LocalWebServer;
    .locals 1

    .line 2001
    iget-object v0, p0, Lcom/inka/ncg2/i;->v:Lcom/inka/ncg2/l;

    return-object v0
.end method

.method public getNcgCenc()Lcom/inka/ncg2/Ncg2Agent$NcgCenc;
    .locals 1

    .line 2598
    iget-object v0, p0, Lcom/inka/ncg2/i;->B:Lcom/inka/ncg2/i$b;

    return-object v0
.end method

.method public getNcgCoreContext()J
    .locals 2

    .line 2834
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {v0}, Lcom/inka/ncg/jni/NcgCoreWrapper;->getNcgCoreContext()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSecureDeviceID()Ljava/lang/String;
    .locals 1

    .line 1982
    iget-object v0, p0, Lcom/inka/ncg2/i;->l:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2ReadPhoneStateException;,
            Lcom/inka/ncg2/Ncg2ModifiedDBFileInoException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 136
    invoke-virtual/range {v0 .. v5}, Lcom/inka/ncg2/i;->init(Landroid/content/Context;Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2ReadPhoneStateException;,
            Lcom/inka/ncg2/Ncg2ModifiedDBFileInoException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 142
    invoke-virtual/range {v0 .. v5}, Lcom/inka/ncg2/i;->init(Landroid/content/Context;Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2ReadPhoneStateException;,
            Lcom/inka/ncg2/Ncg2ModifiedDBFileInoException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 148
    invoke-virtual/range {v0 .. v5}, Lcom/inka/ncg2/i;->init(Landroid/content/Context;Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2ReadPhoneStateException;,
            Lcom/inka/ncg2/Ncg2ModifiedDBFileInoException;,
            Lcom/inka/ncg2/Ncg2FatalException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    const-string v0, "NCG2_JNI"

    const-string v1, "sqlcipher"

    const-string v2, "NCG_Agent"

    const-string v3, "init() ++"

    .line 156
    invoke-virtual {p0, v3}, Lcom/inka/ncg2/i;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_19

    if-eqz p2, :cond_19

    .line 166
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetector;->getInstance()Lcom/inka/ncg2/ScreenRecorderDetector;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/inka/ncg2/ScreenRecorderDetector;->init(Landroid/content/Context;)V

    .line 168
    invoke-virtual {p2}, Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;->getCountOfExecutionLimit()I

    move-result v3

    iput v3, p0, Lcom/inka/ncg2/i;->r:I

    .line 169
    invoke-direct {p0}, Lcom/inka/ncg2/i;->e()V

    .line 172
    invoke-direct {p0}, Lcom/inka/ncg2/i;->g()Z

    move-result v3

    if-nez v3, :cond_18

    if-eqz p5, :cond_0

    .line 179
    :try_start_0
    invoke-static {p1}, Lcom/inka/ncg2/a/b;->b(Landroid/content/Context;)V

    .line 182
    :cond_0
    iput-object p3, p0, Lcom/inka/ncg2/i;->l:Ljava/lang/String;

    .line 183
    iput-object p1, p0, Lcom/inka/ncg2/i;->n:Landroid/content/Context;

    .line 196
    invoke-static {p1, v1}, Lcom/inka/ncg/jni/Util;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_1

    const-string p5, "Failed load sqlcipher"

    .line 197
    invoke-virtual {p0, p5}, Lcom/inka/ncg2/i;->b(Ljava/lang/String;)V

    .line 198
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 215
    :cond_1
    invoke-static {p1, v0}, Lcom/inka/ncg/jni/Util;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_2

    const-string p5, "Failed load NCG"

    .line 218
    invoke-virtual {p0, p5}, Lcom/inka/ncg2/i;->b(Ljava/lang/String;)V

    .line 219
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 232
    :cond_2
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Ncg2Agent.init] DeviceID : "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/inka/ncg2/i;->l:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v2, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-boolean p5, p0, Lcom/inka/ncg2/i;->u:Z

    const/4 v0, 0x1

    if-ne p5, v0, :cond_8

    const-string p5, "[Ncg2Agent.init] get device id by method1"

    .line 234
    invoke-static {v2, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance p5, Lcom/inka/ncg2/DeviceManager;

    invoke-direct {p5, p1}, Lcom/inka/ncg2/DeviceManager;-><init>(Landroid/content/Context;)V

    .line 236
    invoke-virtual {p5}, Lcom/inka/ncg2/DeviceManager;->getDeviceIdDirectly()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/inka/ncg2/Ncg2Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 239
    :try_start_1
    iget-object v2, p0, Lcom/inka/ncg2/i;->l:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 240
    invoke-virtual {p5}, Lcom/inka/ncg2/DeviceManager;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inka/ncg2/i;->l:Ljava/lang/String;

    goto :goto_1

    .line 246
    :cond_3
    invoke-virtual {p5}, Lcom/inka/ncg2/DeviceManager;->isDeviceIdStored()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 247
    invoke-virtual {p5}, Lcom/inka/ncg2/DeviceManager;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inka/ncg2/i;->l:Ljava/lang/String;

    goto :goto_1

    .line 249
    :cond_4
    iget-object v2, p0, Lcom/inka/ncg2/i;->l:Ljava/lang/String;

    invoke-virtual {p5, v2}, Lcom/inka/ncg2/DeviceManager;->storeDeviceID(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/inka/ncg2/k; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/inka/ncg2/Ncg2Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    nop

    if-eqz p3, :cond_5

    .line 255
    :try_start_2
    iput-object p3, p0, Lcom/inka/ncg2/i;->l:Ljava/lang/String;

    goto :goto_0

    .line 258
    :cond_5
    invoke-virtual {p5}, Lcom/inka/ncg2/DeviceManager;->getDeviceIdDirectly()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inka/ncg2/i;->l:Ljava/lang/String;

    .line 260
    :goto_0
    iget-object v2, p0, Lcom/inka/ncg2/i;->l:Ljava/lang/String;

    invoke-virtual {p5, v2}, Lcom/inka/ncg2/DeviceManager;->storeDeviceIDWithoutEncrypt(Ljava/lang/String;)V

    :goto_1
    const/16 v2, 0x24

    if-eqz p3, :cond_6

    .line 264
    iget-object v3, p0, Lcom/inka/ncg2/i;->l:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v2, :cond_6

    iget-object v3, p0, Lcom/inka/ncg2/i;->l:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_6

    .line 266
    iput-object p3, p0, Lcom/inka/ncg2/i;->l:Ljava/lang/String;

    .line 267
    invoke-virtual {p5, p3}, Lcom/inka/ncg2/DeviceManager;->storeDeviceIDWithoutEncrypt(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    if-nez p3, :cond_7

    .line 269
    iget-object p3, p0, Lcom/inka/ncg2/i;->l:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-eq p3, v2, :cond_7

    .line 271
    invoke-virtual {p5}, Lcom/inka/ncg2/DeviceManager;->getDeviceIdDirectly()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/inka/ncg2/i;->l:Ljava/lang/String;

    .line 272
    invoke-virtual {p5, p3}, Lcom/inka/ncg2/DeviceManager;->storeDeviceIDWithoutEncrypt(Ljava/lang/String;)V

    .line 275
    :cond_7
    :goto_2
    invoke-virtual {p5}, Lcom/inka/ncg2/DeviceManager;->getDeviceModel()Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_8
    const-string p3, "[Ncg2Agent.init] get device id by method2"

    .line 277
    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance p3, Lcom/inka/ncg2/DeviceManagerEx;

    invoke-direct {p3, p1}, Lcom/inka/ncg2/DeviceManagerEx;-><init>(Landroid/content/Context;)V

    .line 279
    invoke-virtual {p3}, Lcom/inka/ncg2/DeviceManagerEx;->getDeviceIdDirectly()Ljava/lang/String;

    move-result-object v1

    .line 281
    iget-object p5, p0, Lcom/inka/ncg2/i;->l:Ljava/lang/String;

    if-nez p5, :cond_9

    .line 282
    invoke-virtual {p3}, Lcom/inka/ncg2/DeviceManagerEx;->getDeviceIdDirectly()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/inka/ncg2/i;->l:Ljava/lang/String;

    .line 285
    :cond_9
    invoke-virtual {p3}, Lcom/inka/ncg2/DeviceManagerEx;->getDeviceModel()Ljava/lang/String;

    move-result-object p3

    :goto_3
    if-nez p4, :cond_a

    .line 289
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p4

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    .line 296
    :cond_a
    iget-object p5, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    if-nez p5, :cond_b

    .line 297
    new-instance p5, Lcom/inka/ncg/jni/NcgCoreWrapper;

    new-instance v2, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    invoke-direct {v2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;-><init>()V

    invoke-direct {p5, v2}, Lcom/inka/ncg/jni/NcgCoreWrapper;-><init>(Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;)V

    iput-object p5, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    .line 299
    :cond_b
    iget-object p5, p0, Lcom/inka/ncg2/i;->c:Lcom/inka/ncg2/h;

    if-eqz p5, :cond_c

    .line 301
    iget-object v2, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {v2, p5}, Lcom/inka/ncg/jni/NcgCoreWrapper;->setHttpRequestJniCallback(Lcom/inka/ncg/jni/HttpRequestJniCallback;)V

    .line 304
    :cond_c
    iget-object p5, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    iget-object v2, p0, Lcom/inka/ncg2/i;->x:Lcom/inka/ncg/jni/NcgSdkHelperCallback;

    invoke-virtual {p5, v2}, Lcom/inka/ncg/jni/NcgCoreWrapper;->setNcgSdkHelperCallback(Lcom/inka/ncg/jni/NcgSdkHelperCallback;)V

    .line 306
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Ncg2Agent.init] DeviceID: "

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/inka/ncg2/i;->l:Ljava/lang/String;

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5}, Lcom/inka/ncg2/i;->b(Ljava/lang/String;)V

    .line 307
    iget-object p5, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    iget-object v2, p0, Lcom/inka/ncg2/i;->l:Ljava/lang/String;

    invoke-virtual {p5, v2, v1, p3, p4}, Lcom/inka/ncg/jni/NcgCoreWrapper;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    if-eqz p4, :cond_10

    const p1, -0xffffb9f

    if-eq p4, p1, :cond_f

    const p1, -0xffffb9b

    if-eq p4, p1, :cond_e

    .line 315
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to initialize NCG Library.\nErrorCode:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\nErrorMsg : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-static {p4}, Lcom/inka/ncg/jni/Ncg2CoreErrorCode;->getErrorMsgFromErrCode(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 323
    iget-object p2, p0, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    if-eqz p2, :cond_d

    .line 324
    invoke-interface {p2, p1}, Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;->logException(Ljava/lang/Exception;)V

    .line 326
    :cond_d
    throw p1

    .line 312
    :cond_e
    new-instance p1, Lcom/inka/ncg2/Ncg2CorruptRODBException;

    invoke-direct {p1}, Lcom/inka/ncg2/Ncg2CorruptRODBException;-><init>()V

    throw p1

    .line 310
    :cond_f
    new-instance p1, Lcom/inka/ncg2/Ncg2ModifiedDBFileInoException;

    invoke-direct {p1}, Lcom/inka/ncg2/Ncg2ModifiedDBFileInoException;-><init>()V

    throw p1

    .line 329
    :cond_10
    invoke-virtual {p0}, Lcom/inka/ncg2/i;->d()Z

    move-result p4

    if-eq p4, v0, :cond_14

    .line 333
    invoke-direct {p0, p3}, Lcom/inka/ncg2/i;->c(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_11

    .line 334
    iget-object p3, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {p3, v0}, Lcom/inka/ncg/jni/NcgCoreWrapper;->HTTP_SetLowPerfermenceDevice(Z)V

    .line 337
    :cond_11
    new-instance p3, Lcom/inka/ncg2/l;

    iget-object p4, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-direct {p3, p4, p1}, Lcom/inka/ncg2/l;-><init>(Lcom/inka/ncg/jni/NcgCoreWrapper;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/inka/ncg2/i;->v:Lcom/inka/ncg2/l;

    .line 338
    invoke-virtual {p3}, Lcom/inka/ncg2/l;->a()V

    .line 339
    invoke-virtual {p0}, Lcom/inka/ncg2/i;->enableLog()V

    .line 341
    iget-object p3, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Lcom/inka/ncg/jni/NcgCoreWrapper;->enableParsedXMLLog(I)V

    .line 342
    iget-object p3, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {p3, p4}, Lcom/inka/ncg/jni/NcgCoreWrapper;->enableSeucreDeviceID(I)V

    .line 344
    iput-object p2, p0, Lcom/inka/ncg2/i;->z:Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;

    .line 346
    iput-boolean v0, p0, Lcom/inka/ncg2/i;->t:Z

    .line 347
    iget-object p2, p0, Lcom/inka/ncg2/i;->w:Lcom/inka/ncg2/i$e;

    if-nez p2, :cond_13

    .line 348
    new-instance p2, Lcom/inka/ncg2/i$e;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/inka/ncg2/i$e;-><init>(Lcom/inka/ncg2/i;Lcom/inka/ncg2/i$1;)V

    iput-object p2, p0, Lcom/inka/ncg2/i;->w:Lcom/inka/ncg2/i$e;

    .line 349
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xb

    if-lt p2, p3, :cond_12

    .line 350
    iget-object p2, p0, Lcom/inka/ncg2/i;->w:Lcom/inka/ncg2/i$e;

    sget-object p3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p4, p4, [Ljava/lang/Void;

    invoke-virtual {p2, p3, p4}, Lcom/inka/ncg2/i$e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_4

    .line 352
    :cond_12
    iget-object p2, p0, Lcom/inka/ncg2/i;->w:Lcom/inka/ncg2/i$e;

    new-array p3, p4, [Ljava/lang/Void;

    invoke-virtual {p2, p3}, Lcom/inka/ncg2/i$e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_13
    :goto_4
    const-string p2, "NCG_Init() --"

    .line 356
    invoke-virtual {p0, p2}, Lcom/inka/ncg2/i;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/inka/ncg2/Ncg2Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 379
    invoke-static {}, Lcom/inka/ncg2/g;->a()Lcom/inka/ncg2/g;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/inka/ncg2/g;->a(Landroid/content/Context;)V

    return-void

    .line 330
    :cond_14
    :try_start_3
    new-instance p1, Lcom/inka/ncg2/Ncg2FatalException;

    const-string p2, "Virtual machine has been detected!"

    invoke-direct {p1, p2}, Lcom/inka/ncg2/Ncg2FatalException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/inka/ncg2/Ncg2Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    .line 372
    iget-object p2, p0, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    if-eqz p2, :cond_15

    .line 373
    invoke-interface {p2, p1}, Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;->logException(Ljava/lang/Exception;)V

    .line 375
    :cond_15
    new-instance p2, Lcom/inka/ncg2/Ncg2Exception;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[NCG2SDK] init() : unknown error : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_2
    move-exception p1

    .line 366
    iget-object p2, p0, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    if-eqz p2, :cond_16

    .line 367
    invoke-interface {p2, p1}, Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;->logException(Ljava/lang/Exception;)V

    .line 369
    :cond_16
    throw p1

    :catch_3
    move-exception p1

    .line 359
    iget-object p2, p0, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    if-eqz p2, :cond_17

    .line 360
    invoke-interface {p2, p1}, Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;->logException(Ljava/lang/Exception;)V

    .line 362
    :cond_17
    new-instance p1, Lcom/inka/ncg2/Ncg2ReadPhoneStateException;

    invoke-direct {p1}, Lcom/inka/ncg2/Ncg2ReadPhoneStateException;-><init>()V

    throw p1

    .line 173
    :cond_18
    new-instance p1, Lcom/inka/ncg2/Ncg2FatalException;

    const-string p2, "Emulator has been detected!"

    invoke-direct {p1, p2}, Lcom/inka/ncg2/Ncg2FatalException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 162
    :cond_19
    new-instance p1, Lcom/inka/ncg2/Ncg2Exception;

    const-string p2, "Invalid Parameter : context == null || policy == null"

    invoke-direct {p1, p2}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;)V

    .line 163
    throw p1
.end method

.method public isEnabledLog()Z
    .locals 1

    .line 2817
    iget-boolean v0, p0, Lcom/inka/ncg2/i;->p:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 661
    iget-boolean v0, p0, Lcom/inka/ncg2/i;->t:Z

    return v0
.end method

.method public isLicenseValid(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 667
    invoke-static {p1}, Lcom/inka/ncg/jni/Util;->isHttp(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/inka/ncg2/i;->a(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 671
    :cond_0
    invoke-virtual {p0, p1}, Lcom/inka/ncg2/i;->checkLicenseValid(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    move-result-object p1

    .line 672
    sget-object v0, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->ValidLicense:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public isNcgContent(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2HttpException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 553
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    if-eqz v0, :cond_1

    const-string v0, ".m3u8"

    .line 558
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 559
    new-instance v0, Lcom/inka/ncg2/M3U8KeyFileExtractor;

    invoke-direct {v0}, Lcom/inka/ncg2/M3U8KeyFileExtractor;-><init>()V

    .line 561
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/inka/ncg2/M3U8KeyFileExtractor;->doExtract(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    invoke-virtual {v0}, Lcom/inka/ncg2/M3U8KeyFileExtractor;->isNcgContent()Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 563
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 564
    new-instance v0, Lcom/inka/ncg2/Ncg2Exception;

    invoke-direct {v0, p1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 571
    :cond_0
    invoke-static {p1}, Lcom/inka/ncg/jni/Util;->isHttp(Ljava/lang/String;)Z

    move-result v0

    .line 572
    invoke-direct {p0, p1, v0}, Lcom/inka/ncg2/i;->a(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 554
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must call Ncg2Agent.init() method first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isPallyconFile(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    if-eqz v0, :cond_1

    .line 586
    invoke-virtual {v0, p1}, Lcom/inka/ncg/jni/NcgCoreWrapper;->isPallyconFile(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 582
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must call Ncg2Agent.init() method first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processAfterDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 1627
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    if-eqz v0, :cond_1

    .line 1631
    invoke-virtual {p0, p1}, Lcom/inka/ncg2/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1633
    invoke-virtual {p0}, Lcom/inka/ncg2/i;->createNcgFile()Lcom/inka/ncg2/Ncg2Agent$NcgFile;

    move-result-object v1

    const/4 v2, 0x0

    .line 1634
    invoke-interface {v1, p1, v2}, Lcom/inka/ncg2/Ncg2Agent$NcgFile;->open(Ljava/lang/String;Z)V

    .line 1635
    invoke-interface {v1}, Lcom/inka/ncg2/Ncg2Agent$NcgFile;->getHeaderSize()I

    move-result v3

    .line 1636
    invoke-interface {v1}, Lcom/inka/ncg2/Ncg2Agent$NcgFile;->close()V

    .line 1638
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    int-to-long v6, v3

    sub-long/2addr v4, v6

    .line 1640
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1641
    iget-object p2, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {p2, p1, v4, v5}, Lcom/inka/ncg/jni/NcgCoreWrapper;->SDCARDBINDING_CreateCID(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    .line 1643
    invoke-virtual {p2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1650
    iget-object p2, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {p2, p1, v4, v5}, Lcom/inka/ncg/jni/NcgCoreWrapper;->SDCARDBINDING_AddLicense(Ljava/lang/String;J)V

    return-void

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    const/4 p1, 0x2

    aput-object p2, v1, p1

    const-string p1, "InputSeed(%s) is not matched with the CID(FromFile:[%s], FromRuntime:[%s])."

    .line 1645
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1647
    new-instance p2, Lcom/inka/ncg2/Ncg2Exception;

    invoke-direct {p2, p1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1628
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You must call Ncg2Agent.init() method first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readPallyconInfoTypeA()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 628
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    if-eqz v0, :cond_2

    .line 633
    invoke-virtual {v0}, Lcom/inka/ncg/jni/NcgCoreWrapper;->readPallyconInfoTypeA()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 634
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    return-object v1

    .line 629
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call Ncg2Agent.init() method first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readPallyconInfoTypeB()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 644
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    if-eqz v0, :cond_2

    .line 649
    invoke-virtual {v0}, Lcom/inka/ncg/jni/NcgCoreWrapper;->readPallyconInfoTypeB()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, ""

    .line 650
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 652
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    return-object v2

    .line 645
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call Ncg2Agent.init() method first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readPallyconInternalInfoTypeA()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    if-eqz v0, :cond_2

    .line 617
    invoke-virtual {v0}, Lcom/inka/ncg/jni/NcgCoreWrapper;->readPallyconInternalInfoTypeA()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 618
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    return-object v1

    .line 613
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call Ncg2Agent.init() method first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 3

    const-string v0, "NCG_Clear() ++"

    .line 427
    invoke-virtual {p0, v0}, Lcom/inka/ncg2/i;->b(Ljava/lang/String;)V

    .line 431
    iget-boolean v0, p0, Lcom/inka/ncg2/i;->q:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 441
    :goto_0
    iget-boolean v0, p0, Lcom/inka/ncg2/i;->t:Z

    if-eqz v0, :cond_4

    .line 442
    iget-object v0, p0, Lcom/inka/ncg2/i;->v:Lcom/inka/ncg2/l;

    if-eqz v0, :cond_1

    .line 443
    invoke-virtual {v0}, Lcom/inka/ncg2/l;->b()V

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 447
    invoke-virtual {v0}, Lcom/inka/ncg/jni/NcgCoreWrapper;->clear()V

    :cond_2
    const-string v0, "NCG_Clear() --"

    .line 450
    invoke-virtual {p0, v0}, Lcom/inka/ncg2/i;->b(Ljava/lang/String;)V

    .line 452
    :try_start_0
    invoke-static {}, Lcom/inka/ncg2/g;->a()Lcom/inka/ncg2/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inka/ncg2/g;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 454
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 456
    :goto_1
    iput-boolean v2, p0, Lcom/inka/ncg2/i;->t:Z

    .line 457
    iget-object v0, p0, Lcom/inka/ncg2/i;->e:Ljava/util/Timer;

    if-eqz v0, :cond_3

    .line 458
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 459
    iput-object v0, p0, Lcom/inka/ncg2/i;->e:Ljava/util/Timer;

    .line 460
    iput-object v0, p0, Lcom/inka/ncg2/i;->d:Ljava/util/TimerTask;

    .line 462
    :cond_3
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetector;->getInstance()Lcom/inka/ncg2/ScreenRecorderDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inka/ncg2/ScreenRecorderDetector;->release()V

    .line 464
    iget-object v0, p0, Lcom/inka/ncg2/i;->B:Lcom/inka/ncg2/i$b;

    invoke-virtual {v0}, Lcom/inka/ncg2/i$b;->clearCencDecrypt()V

    .line 467
    :cond_4
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetector;->getInstance()Lcom/inka/ncg2/ScreenRecorderDetector;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 469
    invoke-virtual {v0}, Lcom/inka/ncg2/ScreenRecorderDetector;->release()V

    :cond_5
    return-void
.end method

.method public removeAllTemporaryLicense()V
    .locals 2

    .line 1291
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    if-eqz v0, :cond_0

    .line 1296
    invoke-virtual {v0}, Lcom/inka/ncg/jni/NcgCoreWrapper;->LicMgr_RemoveAllTemporaryLicense()V

    return-void

    .line 1292
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call Ncg2Agent.init() method first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeLicenseAllCID()V
    .locals 3

    .line 1269
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    if-eqz v0, :cond_0

    .line 1273
    invoke-virtual {v0}, Lcom/inka/ncg/jni/NcgCoreWrapper;->LicMgr_DeleteAllContentsLicense()V

    .line 1276
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/inka/ncg2/i;->n:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".ncg_cid.sys"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1280
    :catch_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/inka/ncg2/i;->n:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".ncg_sid.sys"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1284
    :catch_1
    :try_start_2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/inka/ncg2/i;->n:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".ncg_crt.sys"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void

    .line 1270
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call Ncg2Agent.init() method first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeLicenseByCID(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    const-string v0, ""

    .line 1193
    invoke-virtual {p0, p1, v0}, Lcom/inka/ncg2/i;->removeLicenseByCID(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeLicenseByCID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 1198
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    if-eqz v0, :cond_3

    .line 1203
    invoke-virtual {v0, p1, p2}, Lcom/inka/ncg/jni/NcgCoreWrapper;->LicMgr_RemoveContentsLicense(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const p2, -0xffff9df

    if-eq p1, p2, :cond_2

    const p2, -0xffff9de

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 1215
    :cond_1
    invoke-static {p1}, Lcom/inka/ncg/jni/Ncg2CoreErrorCode;->getErrorMsgFromErrCode(I)Ljava/lang/String;

    move-result-object p2

    .line 1216
    new-instance v0, Lcom/inka/ncg2/Ncg2Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove content license."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    :goto_0
    return-void

    .line 1199
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You must call Ncg2Agent.init() method first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeLicenseByPath(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 1223
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    if-eqz v0, :cond_3

    .line 1229
    invoke-virtual {p0, p1}, Lcom/inka/ncg2/i;->getHeaderInfo(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;

    move-result-object p1

    .line 1230
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    iget-object v1, p1, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->contentID:Ljava/lang/String;

    iget-object p1, p1, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->siteID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/inka/ncg/jni/NcgCoreWrapper;->LicMgr_RemoveContentsLicense(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const v0, -0xffff9df

    if-eq p1, v0, :cond_2

    const v0, -0xffff9de

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 1241
    :cond_1
    invoke-static {p1}, Lcom/inka/ncg/jni/Ncg2CoreErrorCode;->getErrorMsgFromErrCode(I)Ljava/lang/String;

    move-result-object v0

    .line 1242
    new-instance v1, Lcom/inka/ncg2/Ncg2Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove content license."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_2
    :goto_0
    return-void

    .line 1224
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must call Ncg2Agent.init() method first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeRODBFile(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1250
    invoke-virtual {p0, p1, v0}, Lcom/inka/ncg2/i;->removeRODBFile(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public removeRODBFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1256
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    if-nez v0, :cond_0

    const-string p1, "NCG_Agent"

    const-string p2, "You must call Ncg2Agent.init() method first."

    .line 1257
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 1262
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 1264
    :cond_1
    iget-object p1, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {p1, p2}, Lcom/inka/ncg/jni/NcgCoreWrapper;->LicMgr_RemoveRODBFile(Ljava/lang/String;)I

    return-void
.end method

.method public sendCustomChannelRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;,
            Lcom/inka/ncg2/Ncg2HttpException;
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 509
    iget-object v3, p0, Lcom/inka/ncg2/i;->c:Lcom/inka/ncg2/h;

    invoke-virtual {v0, p1, p2, v3, v2}, Lcom/inka/ncg/jni/NcgCoreWrapper;->sendCustomChannelRequest(Ljava/lang/String;Ljava/lang/String;Lcom/inka/ncg/jni/HttpRequestJniCallback;[Ljava/lang/String;)I

    move-result p2

    const v0, -0xfffdffd

    const/4 v3, 0x0

    if-ne p2, v0, :cond_1

    .line 512
    iget-object p1, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {p1}, Lcom/inka/ncg/jni/NcgCoreWrapper;->getLastServerErrorCode()I

    move-result v6

    .line 513
    iget-object p1, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {p1}, Lcom/inka/ncg/jni/NcgCoreWrapper;->getLastServerErrorMsg()Ljava/lang/String;

    move-result-object v7

    .line 514
    iget-object p1, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {p1}, Lcom/inka/ncg/jni/NcgCoreWrapper;->getLastRequestRowData()Ljava/lang/String;

    move-result-object v8

    .line 515
    iget-object p1, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {p1}, Lcom/inka/ncg/jni/NcgCoreWrapper;->getLastRequestPlainData()Ljava/lang/String;

    move-result-object v9

    .line 516
    iget-object p1, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {p1}, Lcom/inka/ncg/jni/NcgCoreWrapper;->getLastResponseRowData()Ljava/lang/String;

    move-result-object v10

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 520
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    aput-object v7, p1, v1

    const-string p2, "[PKI] Failed to send a custom request. ErrorCode: [%d], ErrorMsg: [%s] "

    .line 518
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 522
    new-instance p1, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object p2, p0, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    if-eqz p2, :cond_0

    .line 528
    invoke-interface {p2, p1}, Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;->logException(Ljava/lang/Exception;)V

    .line 530
    :cond_0
    throw p1

    :cond_1
    const v0, -0xffffef8

    const-string v1, "Failed to send a custom request : "

    if-eq p2, v0, :cond_4

    if-eqz p2, :cond_3

    .line 539
    invoke-static {p2}, Lcom/inka/ncg/jni/Ncg2CoreErrorCode;->getErrorMsgFromErrCode(I)Ljava/lang/String;

    move-result-object p1

    .line 540
    new-instance v0, Lcom/inka/ncg2/Ncg2Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;I)V

    .line 542
    iget-object p1, p0, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    if-eqz p1, :cond_2

    .line 543
    invoke-interface {p1, v0}, Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;->logException(Ljava/lang/Exception;)V

    .line 545
    :cond_2
    throw v0

    .line 548
    :cond_3
    aget-object p1, v2, v3

    return-object p1

    .line 532
    :cond_4
    invoke-static {p2}, Lcom/inka/ncg/jni/Ncg2CoreErrorCode;->getErrorMsgFromErrCode(I)Ljava/lang/String;

    move-result-object p2

    .line 533
    new-instance v0, Lcom/inka/ncg2/Ncg2HttpException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, -0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 537
    throw v0

    .line 504
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You must call Ncg2Agent.init() method first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public serialAuthentication(Landroid/content/Context;[Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2DeviceNotMatchedException;,
            Lcom/inka/ncg2/Ncg2HttpException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    const-string v0, "http://sd.pallycon.com/side/serialauth.do"

    const-string v1, "NCG_Agent"

    .line 1014
    new-instance v2, Lcom/inka/ncg2/n;

    invoke-direct {v2}, Lcom/inka/ncg2/n;-><init>()V

    .line 1016
    :try_start_0
    new-instance v3, Lcom/inka/ncg2/StringEncrypter;

    invoke-virtual {v2}, Lcom/inka/ncg2/n;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/inka/ncg2/n;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/inka/ncg2/StringEncrypter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 1022
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/inka/ncg2/i;->getHeaderInfo(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;

    move-result-object p3

    .line 1023
    new-instance v2, Lcom/inka/ncg2/DeviceManager;

    invoke-direct {v2, p1}, Lcom/inka/ncg2/DeviceManager;-><init>(Landroid/content/Context;)V

    .line 1026
    :try_start_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "serial"

    .line 1027
    invoke-virtual {v4, v5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "cid"

    .line 1028
    iget-object p3, p3, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->contentID:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {p3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "device_id"

    .line 1029
    invoke-virtual {v2}, Lcom/inka/ncg2/DeviceManager;->getDeviceID()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v4, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "device_model"

    .line 1030
    sget-object p4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "app_version"

    .line 1031
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p4, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    invoke-direct {p0, v4}, Lcom/inka/ncg2/i;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 1034
    invoke-direct {p0, p2}, Lcom/inka/ncg2/i;->a([Ljava/lang/String;)Z

    move-result p2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p2, :cond_1

    .line 1040
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/inka/ncg2/StringEncrypter;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string p2, "serial authentication request++"

    .line 1046
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    invoke-direct {p0, v0, p1}, Lcom/inka/ncg2/i;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "serial authentication request--"

    .line 1048
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1051
    :try_start_4
    invoke-virtual {v3, p1}, Lcom/inka/ncg2/StringEncrypter;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    const-string p2, ""

    .line 1057
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    .line 1062
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "response"

    .line 1063
    invoke-virtual {p0, p2, p1}, Lcom/inka/ncg2/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1065
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 1059
    :cond_0
    new-instance p1, Lcom/inka/ncg2/Ncg2Exception;

    const-string p2, "Failed to decrypt a response from the %s."

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v0, p3, v2

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 1054
    new-instance p2, Lcom/inka/ncg2/Ncg2Exception;

    invoke-direct {p2, p1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1043
    new-instance p2, Lcom/inka/ncg2/Ncg2Exception;

    invoke-direct {p2, p1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1035
    :cond_1
    new-instance p1, Lcom/inka/ncg2/Ncg2DeviceNotMatchedException;

    invoke-direct {p1}, Lcom/inka/ncg2/Ncg2DeviceNotMatchedException;-><init>()V

    throw p1
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p1

    .line 1073
    new-instance p2, Lcom/inka/ncg2/Ncg2Exception;

    invoke-direct {p2, p1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 1069
    new-instance p2, Lcom/inka/ncg2/Ncg2Exception;

    invoke-direct {p2, p1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_4
    move-exception p1

    .line 1019
    new-instance p2, Lcom/inka/ncg2/Ncg2Exception;

    invoke-direct {p2, p1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setExceptionalEventListener(Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;)V
    .locals 0

    .line 2839
    iput-object p1, p0, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    return-void
.end method

.method public setHttpRequestCallback(Lcom/inka/ncg2/Ncg2Agent$HttpRequestCallback;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1598
    iput-object p1, p0, Lcom/inka/ncg2/i;->c:Lcom/inka/ncg2/h;

    goto :goto_0

    .line 1600
    :cond_0
    new-instance v0, Lcom/inka/ncg2/h;

    invoke-direct {v0, p1}, Lcom/inka/ncg2/h;-><init>(Lcom/inka/ncg2/Ncg2Agent$HttpRequestCallback;)V

    iput-object v0, p0, Lcom/inka/ncg2/i;->c:Lcom/inka/ncg2/h;

    .line 1602
    :goto_0
    iget-object p1, p0, Lcom/inka/ncg2/i;->c:Lcom/inka/ncg2/h;

    sput-object p1, Lcom/inka/ncg/jni/HttpRequestJniCallback;->mRegisteredCallback:Lcom/inka/ncg/jni/HttpRequestJniCallback;

    .line 1604
    iget-object p1, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    if-eqz p1, :cond_1

    .line 1605
    iget-object v0, p0, Lcom/inka/ncg2/i;->c:Lcom/inka/ncg2/h;

    invoke-virtual {p1, v0}, Lcom/inka/ncg/jni/NcgCoreWrapper;->setHttpRequestJniCallback(Lcom/inka/ncg/jni/HttpRequestJniCallback;)V

    :cond_1
    return-void
.end method

.method public updateSecureTime()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/j;,
            Lcom/inka/ncg2/m;,
            Lcom/inka/ncg2/Ncg2NotAuthorizedAppID;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/inka/ncg2/i;->z:Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;

    invoke-virtual {v0}, Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;->getPolicyCode()I

    move-result v3

    .line 399
    iget-object v1, p0, Lcom/inka/ncg2/i;->k:Lcom/inka/ncg/jni/NcgCoreWrapper;

    iget-object v0, p0, Lcom/inka/ncg2/i;->n:Landroid/content/Context;

    .line 400
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/inka/ncg2/i;->r:I

    iget-object v6, p0, Lcom/inka/ncg2/i;->c:Lcom/inka/ncg2/h;

    const-string v5, "https://license.pallycon.com/ri/licenseManager.do"

    .line 399
    invoke-virtual/range {v1 .. v6}, Lcom/inka/ncg/jni/NcgCoreWrapper;->initSecureTimeAndCheckAppID(Ljava/lang/String;IILjava/lang/String;Lcom/inka/ncg/jni/HttpRequestJniCallback;)I

    move-result v0

    const v1, -0xffffbba

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 419
    new-instance v1, Lcom/inka/ncg2/Ncg2Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSecureClock() failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-static {v0}, Lcom/inka/ncg/jni/Ncg2CoreErrorCode;->getErrorMsgFromErrCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 416
    :pswitch_0
    new-instance v0, Lcom/inka/ncg2/Ncg2NotAuthorizedAppID;

    invoke-direct {v0}, Lcom/inka/ncg2/Ncg2NotAuthorizedAppID;-><init>()V

    throw v0

    .line 413
    :pswitch_1
    new-instance v0, Lcom/inka/ncg2/m;

    invoke-direct {v0}, Lcom/inka/ncg2/m;-><init>()V

    throw v0

    :cond_0
    return-void

    .line 410
    :cond_1
    :pswitch_2
    new-instance v0, Lcom/inka/ncg2/j;

    invoke-direct {v0}, Lcom/inka/ncg2/j;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch -0xffff900
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
