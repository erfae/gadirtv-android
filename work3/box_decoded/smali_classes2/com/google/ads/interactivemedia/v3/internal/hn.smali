.class public final Lcom/google/ads/interactivemedia/v3/internal/hn;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field public final a:I

.field public final b:Lcom/google/ads/interactivemedia/v3/internal/ro;

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/ads/interactivemedia/v3/internal/hm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/hn;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/ads/interactivemedia/v3/internal/ro;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/ads/interactivemedia/v3/internal/ro;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/ads/interactivemedia/v3/internal/hm;",
            ">;I",
            "Lcom/google/ads/interactivemedia/v3/internal/ro;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/hn;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/hn;->a:I

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/hn;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/hn;
    .locals 2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/hn;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/hn;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    invoke-direct {v0, v1, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/hn;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/ads/interactivemedia/v3/internal/ro;)V

    return-object v0
.end method

.method public final a(Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/ho;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/hn;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/hm;

    invoke-direct {p2}, Lcom/google/ads/interactivemedia/v3/internal/hm;-><init>()V

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
