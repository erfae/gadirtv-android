.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/qu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/ra;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ra;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qu;->a:Lcom/google/ads/interactivemedia/v3/internal/ra;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qu;->a:Lcom/google/ads/interactivemedia/v3/internal/ra;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ra;->a(Landroid/os/Message;)Z

    const/4 p1, 0x1

    return p1
.end method
