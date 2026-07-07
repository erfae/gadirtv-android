.class public Lcom/inka/ncg2/Ncg2HttpException;
.super Lcom/inka/ncg2/Ncg2Exception;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mHttpErrorCode:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p2, p3}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p1, p0, Lcom/inka/ncg2/Ncg2HttpException;->mUrl:Ljava/lang/String;

    .line 28
    iput p3, p0, Lcom/inka/ncg2/Ncg2HttpException;->mHttpErrorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p3, p1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    iput-object p2, p0, Lcom/inka/ncg2/Ncg2HttpException;->mUrl:Ljava/lang/String;

    .line 35
    iput p4, p0, Lcom/inka/ncg2/Ncg2HttpException;->mHttpErrorCode:I

    return-void
.end method


# virtual methods
.method public getHttpErrorCode()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/inka/ncg2/Ncg2HttpException;->mHttpErrorCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 41
    iget-object v1, p0, Lcom/inka/ncg2/Ncg2HttpException;->mUrl:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 43
    invoke-super {p0}, Lcom/inka/ncg2/Ncg2Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/inka/ncg2/Ncg2HttpException;->mHttpErrorCode:I

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Url : [%s], Message : [%s], Code : [%d]"

    .line 41
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
