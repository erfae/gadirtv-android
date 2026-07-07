.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/bc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/bd;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/bd;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bc;->a:Lcom/google/ads/interactivemedia/v3/internal/bd;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/bc;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bc;->a:Lcom/google/ads/interactivemedia/v3/internal/bd;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bc;->b:I

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/bd;->a:Lcom/google/ads/interactivemedia/v3/internal/bf;

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bf;->a(Lcom/google/ads/interactivemedia/v3/internal/bf;I)V

    return-void
.end method
