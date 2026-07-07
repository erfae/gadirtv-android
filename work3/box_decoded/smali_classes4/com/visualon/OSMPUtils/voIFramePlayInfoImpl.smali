.class public Lcom/visualon/OSMPUtils/voIFramePlayInfoImpl;
.super Ljava/lang/Object;
.source "voIFramePlayInfoImpl.java"

# interfaces
.implements Lcom/visualon/OSMPUtils/voIFramePlayInfo;


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@voIFramePlayInfoImpl"


# instance fields
.field private mEnable:Z

.field private mSpeedRate:F


# direct methods
.method public constructor <init>(ZF)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean p1, p0, Lcom/visualon/OSMPUtils/voIFramePlayInfoImpl;->mEnable:Z

    .line 26
    iput p2, p0, Lcom/visualon/OSMPUtils/voIFramePlayInfoImpl;->mSpeedRate:F

    return-void
.end method


# virtual methods
.method public getSpeedRate()F
    .locals 1

    .line 36
    iget v0, p0, Lcom/visualon/OSMPUtils/voIFramePlayInfoImpl;->mSpeedRate:F

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/visualon/OSMPUtils/voIFramePlayInfoImpl;->mEnable:Z

    return v0
.end method

.method public setEnable(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/visualon/OSMPUtils/voIFramePlayInfoImpl;->mEnable:Z

    return-void
.end method

.method public setSpeedRate(F)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/visualon/OSMPUtils/voIFramePlayInfoImpl;->mSpeedRate:F

    return-void
.end method
