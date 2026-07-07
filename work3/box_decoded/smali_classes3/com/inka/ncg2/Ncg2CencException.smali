.class public Lcom/inka/ncg2/Ncg2CencException;
.super Lcom/inka/ncg2/Ncg2Exception;
.source "SourceFile"


# instance fields
.field private mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/inka/ncg2/Ncg2Exception;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/inka/ncg2/Ncg2CencException;->mMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    iget-object v1, p0, Lcom/inka/ncg2/Ncg2CencException;->mMessage:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Ncg2CencException. [%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
