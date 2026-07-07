.class public Lcom/inka/ncg2/Ncg2Exception;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected mErrorCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Unknown Ncg2Exception"

    .line 38
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/inka/ncg2/Ncg2Exception;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/inka/ncg2/Ncg2Exception;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/inka/ncg2/Ncg2Exception;->mErrorCode:I

    .line 34
    iput p2, p0, Lcom/inka/ncg2/Ncg2Exception;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/inka/ncg2/Ncg2Exception;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/inka/ncg2/Ncg2Exception;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/inka/ncg2/Ncg2Exception;->mErrorCode:I

    return v0
.end method
