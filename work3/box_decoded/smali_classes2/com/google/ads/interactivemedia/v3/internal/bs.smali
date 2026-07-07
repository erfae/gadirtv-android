.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/bs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/bh;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/google/ads/interactivemedia/v3/internal/bh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bs;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/bs;->b:Lcom/google/ads/interactivemedia/v3/internal/bh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bs;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bs;->b:Lcom/google/ads/interactivemedia/v3/internal/bh;

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/google/ads/interactivemedia/v3/internal/bh;)V

    return-void
.end method
