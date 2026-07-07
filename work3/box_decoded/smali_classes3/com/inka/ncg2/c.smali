.class abstract Lcom/inka/ncg2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/inka/ncg2/c;
    .locals 1

    .line 52
    new-instance v0, Lcom/inka/ncg2/e;

    invoke-direct {v0}, Lcom/inka/ncg2/e;-><init>()V

    .line 53
    invoke-virtual {v0, p0}, Lcom/inka/ncg2/e;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    .line 56
    :cond_0
    new-instance p0, Lcom/inka/ncg2/d;

    invoke-direct {p0}, Lcom/inka/ncg2/d;-><init>()V

    return-object p0
.end method


# virtual methods
.method abstract a(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method abstract a()Z
.end method

.method abstract b(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method
