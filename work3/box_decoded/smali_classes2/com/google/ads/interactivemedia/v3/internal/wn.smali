.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/wn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/wt;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/wt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wn;->a:Lcom/google/ads/interactivemedia/v3/internal/wt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wn;->a:Lcom/google/ads/interactivemedia/v3/internal/wt;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->m()V

    return-void
.end method
