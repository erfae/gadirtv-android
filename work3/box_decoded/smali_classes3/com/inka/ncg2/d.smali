.class Lcom/inka/ncg2/d;
.super Lcom/inka/ncg2/c;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 275
    invoke-direct {p0}, Lcom/inka/ncg2/c;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    return-object p1
.end method

.method a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    return-object p1
.end method
