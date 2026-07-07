.class public final Lcom/google/ads/interactivemedia/v3/internal/aaf;
.super Lcom/google/ads/interactivemedia/v3/internal/aae;
.source "IMASDK"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(ILcom/google/ads/interactivemedia/v3/internal/zs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/ads/interactivemedia/v3/internal/zs;",
            ")V"
        }
    .end annotation

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x1a

    .line 1
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Response code: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/aae;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aaf;->a:I

    return-void
.end method
