.class Lcom/inka/ncg2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/inka/ncg2/g;


# instance fields
.field private a:Lcom/inka/ncg2/i;

.field private c:Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;

.field private d:Z

.field private e:Lcom/inka/ncg2/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/inka/ncg2/g;

    invoke-direct {v0}, Lcom/inka/ncg2/g;-><init>()V

    sput-object v0, Lcom/inka/ncg2/g;->b:Lcom/inka/ncg2/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/inka/ncg2/i;->a()Lcom/inka/ncg2/i;

    move-result-object v0

    iput-object v0, p0, Lcom/inka/ncg2/g;->a:Lcom/inka/ncg2/i;

    .line 45
    new-instance v0, Lcom/inka/ncg2/g$1;

    invoke-direct {v0, p0}, Lcom/inka/ncg2/g$1;-><init>(Lcom/inka/ncg2/g;)V

    iput-object v0, p0, Lcom/inka/ncg2/g;->e:Lcom/inka/ncg2/a/d;

    return-void
.end method

.method public static a()Lcom/inka/ncg2/g;
    .locals 1

    .line 28
    sget-object v0, Lcom/inka/ncg2/g;->b:Lcom/inka/ncg2/g;

    return-object v0
.end method

.method static synthetic a(Lcom/inka/ncg2/g;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/inka/ncg2/g;->d:Z

    return p0
.end method

.method static synthetic a(Lcom/inka/ncg2/g;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/inka/ncg2/g;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/inka/ncg2/g;)Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/inka/ncg2/g;->c:Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;

    return-object p0
.end method

.method static synthetic c(Lcom/inka/ncg2/g;)Lcom/inka/ncg2/i;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/inka/ncg2/g;->a:Lcom/inka/ncg2/i;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-static {}, Lcom/inka/ncg2/a/f;->h()Lcom/inka/ncg2/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inka/ncg2/a/f;->a(Landroid/content/Context;)Z

    .line 38
    invoke-static {}, Lcom/inka/ncg2/a/f;->h()Lcom/inka/ncg2/a/f;

    move-result-object p1

    iget-object v0, p0, Lcom/inka/ncg2/g;->e:Lcom/inka/ncg2/a/d;

    invoke-virtual {p1, v0}, Lcom/inka/ncg2/a/f;->a(Lcom/inka/ncg2/a/d;)V

    return-void
.end method

.method public a(Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/inka/ncg2/g;->c:Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/inka/ncg2/g;->d:Z

    return-void
.end method

.method public b()V
    .locals 1

    .line 42
    invoke-static {}, Lcom/inka/ncg2/a/f;->h()Lcom/inka/ncg2/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inka/ncg2/a/f;->e()V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/inka/ncg2/g;->d:Z

    return v0
.end method
