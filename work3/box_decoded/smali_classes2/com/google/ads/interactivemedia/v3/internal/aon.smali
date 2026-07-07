.class final Lcom/google/ads/interactivemedia/v3/internal/aon;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aon;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aon;->a:[Ljava/lang/Object;

    .line 1
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/aop;->b([Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/aop;

    move-result-object v0

    return-object v0
.end method
