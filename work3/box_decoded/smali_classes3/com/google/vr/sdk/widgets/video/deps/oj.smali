.class public final Lcom/google/vr/sdk/widgets/video/deps/oj;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/ok;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/oj$f;,
        Lcom/google/vr/sdk/widgets/video/deps/oj$c;,
        Lcom/google/vr/sdk/widgets/video/deps/oj$b;,
        Lcom/google/vr/sdk/widgets/video/deps/oj$e;,
        Lcom/google/vr/sdk/widgets/video/deps/oj$a;,
        Lcom/google/vr/sdk/widgets/video/deps/oj$d;,
        Lcom/google/vr/sdk/widgets/video/deps/oj$g;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/vr/sdk/widgets/video/deps/oj$b;

.field public static final b:Lcom/google/vr/sdk/widgets/video/deps/oj$b;

.field public static final c:Lcom/google/vr/sdk/widgets/video/deps/oj$b;

.field public static final d:Lcom/google/vr/sdk/widgets/video/deps/oj$b;


# instance fields
.field private final e:Ljava/util/concurrent/ExecutorService;

.field private f:Lcom/google/vr/sdk/widgets/video/deps/oj$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/oj$c<",
            "+",
            "Lcom/google/vr/sdk/widgets/video/deps/oj$d;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 38
    invoke-static {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a(ZJ)Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/oj;->a:Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    const/4 v0, 0x1

    .line 40
    invoke-static {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a(ZJ)Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/oj;->b:Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    .line 41
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/oj$b;-><init>(IJLcom/google/vr/sdk/widgets/video/deps/oj$1;)V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/oj;->c:Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    .line 42
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/oj$b;-><init>(IJLcom/google/vr/sdk/widgets/video/deps/oj$1;)V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/oj;->d:Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/oj;->e:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a(ZJ)Lcom/google/vr/sdk/widgets/video/deps/oj$b;
    .locals 2

    .line 4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    const/4 v1, 0x0

    .line 5
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/oj$b;-><init>(IJLcom/google/vr/sdk/widgets/video/deps/oj$1;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/oj;)Lcom/google/vr/sdk/widgets/video/deps/oj$c;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj;->f:Lcom/google/vr/sdk/widgets/video/deps/oj$c;

    return-object p0
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/oj;Lcom/google/vr/sdk/widgets/video/deps/oj$c;)Lcom/google/vr/sdk/widgets/video/deps/oj$c;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/oj;->f:Lcom/google/vr/sdk/widgets/video/deps/oj$c;

    return-object p1
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/oj;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/oj;->g:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/oj;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj;->e:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/oj$d;Lcom/google/vr/sdk/widgets/video/deps/oj$a;I)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/vr/sdk/widgets/video/deps/oj$d;",
            ">(TT;",
            "Lcom/google/vr/sdk/widgets/video/deps/oj$a<",
            "TT;>;I)J"
        }
    .end annotation

    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj;->g:Ljava/io/IOException;

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 11
    new-instance v10, Lcom/google/vr/sdk/widgets/video/deps/oj$c;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/oj$c;-><init>(Lcom/google/vr/sdk/widgets/video/deps/oj;Landroid/os/Looper;Lcom/google/vr/sdk/widgets/video/deps/oj$d;Lcom/google/vr/sdk/widgets/video/deps/oj$a;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v10, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->a(J)V

    return-wide v8
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 24
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a(I)V

    return-void
.end method

.method public a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj;->g:Ljava/io/IOException;

    if-nez v0, :cond_2

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj;->f:Lcom/google/vr/sdk/widgets/video/deps/oj$c;

    if-eqz v0, :cond_1

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_0

    .line 30
    iget p1, v0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->a:I

    .line 31
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->a(I)V

    :cond_1
    return-void

    .line 27
    :cond_2
    throw v0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/oj$e;)V
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj;->f:Lcom/google/vr/sdk/widgets/video/deps/oj$c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->a(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/oj$f;

    invoke-direct {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/oj$f;-><init>(Lcom/google/vr/sdk/widgets/video/deps/oj$e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/oj;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj;->f:Lcom/google/vr/sdk/widgets/video/deps/oj$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj;->f:Lcom/google/vr/sdk/widgets/video/deps/oj$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->a(Z)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a(Lcom/google/vr/sdk/widgets/video/deps/oj$e;)V

    return-void
.end method
