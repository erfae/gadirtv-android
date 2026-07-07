.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/adc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/adg;

.field private final b:J

.field private final c:I


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/adg;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/adc;->a:Lcom/google/ads/interactivemedia/v3/internal/adg;

    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/adc;->b:J

    iput p4, p0, Lcom/google/ads/interactivemedia/v3/internal/adc;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/adc;->a:Lcom/google/ads/interactivemedia/v3/internal/adg;

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/adc;->b:J

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/adc;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/adg;->b(JI)V

    return-void
.end method
