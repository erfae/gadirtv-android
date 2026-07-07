.class public Lcom/inka/ncg2/Ncg2Agent$NcgHttpRequestException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inka/ncg2/Ncg2Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NcgHttpRequestException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mHttpStatusCode:I

.field private mHttpStatusMsg:Ljava/lang/String;

.field private mLastErrorMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1743
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 1744
    iput p1, p0, Lcom/inka/ncg2/Ncg2Agent$NcgHttpRequestException;->mHttpStatusCode:I

    .line 1745
    iput-object p2, p0, Lcom/inka/ncg2/Ncg2Agent$NcgHttpRequestException;->mHttpStatusMsg:Ljava/lang/String;

    .line 1746
    iput-object p3, p0, Lcom/inka/ncg2/Ncg2Agent$NcgHttpRequestException;->mLastErrorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHttpStatusCode()I
    .locals 1

    .line 1763
    iget v0, p0, Lcom/inka/ncg2/Ncg2Agent$NcgHttpRequestException;->mHttpStatusCode:I

    return v0
.end method

.method public getHttpStatusMsg()Ljava/lang/String;
    .locals 1

    .line 1780
    iget-object v0, p0, Lcom/inka/ncg2/Ncg2Agent$NcgHttpRequestException;->mHttpStatusMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getLastErrorMsg()Ljava/lang/String;
    .locals 1

    .line 1797
    iget-object v0, p0, Lcom/inka/ncg2/Ncg2Agent$NcgHttpRequestException;->mLastErrorMsg:Ljava/lang/String;

    return-object v0
.end method
