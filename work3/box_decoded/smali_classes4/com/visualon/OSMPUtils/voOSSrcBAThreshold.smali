.class public Lcom/visualon/OSMPUtils/voOSSrcBAThreshold;
.super Ljava/lang/Object;
.source "voOSSrcBAThreshold.java"


# instance fields
.field private nLower:I

.field private nUpper:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/visualon/OSMPUtils/voOSSrcBAThreshold;->nUpper:I

    .line 23
    iput v0, p0, Lcom/visualon/OSMPUtils/voOSSrcBAThreshold;->nLower:I

    return-void
.end method


# virtual methods
.method public getLower()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSrcBAThreshold;->nLower:I

    return v0
.end method

.method public getUpper()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSrcBAThreshold;->nUpper:I

    return v0
.end method

.method public setLower(I)I
    .locals 0

    .line 67
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSSrcBAThreshold;->nLower:I

    const/4 p1, 0x0

    return p1
.end method

.method public setUpper(I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSSrcBAThreshold;->nUpper:I

    const/4 p1, 0x0

    return p1
.end method
