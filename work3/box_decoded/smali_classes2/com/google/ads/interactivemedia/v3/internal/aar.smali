.class public final Lcom/google/ads/interactivemedia/v3/internal/aar;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/aas;


# static fields
.field public static final a:Lcom/google/ads/interactivemedia/v3/internal/aal;

.field public static final b:Lcom/google/ads/interactivemedia/v3/internal/aal;


# instance fields
.field private final c:Ljava/util/concurrent/ExecutorService;

.field private d:Lcom/google/ads/interactivemedia/v3/internal/aam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/aam<",
            "+",
            "Lcom/google/ads/interactivemedia/v3/internal/aan;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    invoke-static {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/aar;->a(ZJ)Lcom/google/ads/interactivemedia/v3/internal/aal;

    const/4 v0, 0x1

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/aar;->a(ZJ)Lcom/google/ads/interactivemedia/v3/internal/aal;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aal;

    const/4 v3, 0x2

    .line 3
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/aal;-><init>(IJ)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/aar;->a:Lcom/google/ads/interactivemedia/v3/internal/aal;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aal;

    const/4 v3, 0x3

    .line 4
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/aal;-><init>(IJ)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/aar;->b:Lcom/google/ads/interactivemedia/v3/internal/aal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aar;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a(ZJ)Lcom/google/ads/interactivemedia/v3/internal/aal;
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aal;

    .line 7
    invoke-direct {v0, p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aal;-><init>(IJ)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/aar;)Lcom/google/ads/interactivemedia/v3/internal/aam;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/aar;->d:Lcom/google/ads/interactivemedia/v3/internal/aam;

    return-object p0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/aar;Lcom/google/ads/interactivemedia/v3/internal/aam;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aar;->d:Lcom/google/ads/interactivemedia/v3/internal/aam;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/aar;Ljava/io/IOException;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aar;->e:Ljava/io/IOException;

    return-void
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/aar;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/aar;->c:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/aan;Lcom/google/ads/interactivemedia/v3/internal/aak;I)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/ads/interactivemedia/v3/internal/aan;",
            ">(TT;",
            "Lcom/google/ads/interactivemedia/v3/internal/aak<",
            "TT;>;I)J"
        }
    .end annotation

    .line 15
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aar;->e:Ljava/io/IOException;

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    new-instance v10, Lcom/google/ads/interactivemedia/v3/internal/aam;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, v8

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/aam;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aar;Landroid/os/Looper;Lcom/google/ads/interactivemedia/v3/internal/aan;Lcom/google/ads/interactivemedia/v3/internal/aak;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v10, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aam;->a(J)V

    return-wide v8
.end method

.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/aar;->a(I)V

    return-void
.end method

.method public final a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aar;->e:Ljava/io/IOException;

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aar;->d:Lcom/google/ads/interactivemedia/v3/internal/aam;

    if-eqz v0, :cond_1

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_0

    iget p1, v0, Lcom/google/ads/interactivemedia/v3/internal/aam;->a:I

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aam;->a(I)V

    :cond_1
    return-void

    .line 9
    :cond_2
    throw v0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/aao;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aar;->d:Lcom/google/ads/interactivemedia/v3/internal/aam;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aam;->a(Z)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aar;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/aap;

    .line 13
    invoke-direct {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/aap;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aao;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aar;->c:Ljava/util/concurrent/ExecutorService;

    .line 14
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aar;->e:Ljava/io/IOException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aar;->e:Ljava/io/IOException;

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aar;->d:Lcom/google/ads/interactivemedia/v3/internal/aam;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aar;->d:Lcom/google/ads/interactivemedia/v3/internal/aam;

    .line 6
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aam;->a(Z)V

    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/aar;->a(Lcom/google/ads/interactivemedia/v3/internal/aao;)V

    return-void
.end method
