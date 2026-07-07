.class public final synthetic Lcom/google/ads/interactivemedia/v3/internal/gp;
.super Ljava/lang/Object;
.source "IMASDK"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)Lcom/google/ads/interactivemedia/v3/internal/fe;
    .locals 0

    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/fe;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Lcom/google/ads/interactivemedia/v3/internal/fe;-><init>(II)V

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/b;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_0
    const-string v0, "OMIDLIB"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
