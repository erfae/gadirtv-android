.class public Lcom/visualon/OSMPSensor/voSphericalParameter;
.super Ljava/lang/Object;
.source "voSphericalParameter.java"


# instance fields
.field private m_bPortrait:Z

.field private m_fFov:F

.field private m_fRotateMatrix:[F


# direct methods
.method public constructor <init>(Z[FF)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/visualon/OSMPSensor/voSphericalParameter;->m_bPortrait:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/visualon/OSMPSensor/voSphericalParameter;->m_fRotateMatrix:[F

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/visualon/OSMPSensor/voSphericalParameter;->m_fFov:F

    .line 9
    iput-boolean p1, p0, Lcom/visualon/OSMPSensor/voSphericalParameter;->m_bPortrait:Z

    .line 10
    iput-object p2, p0, Lcom/visualon/OSMPSensor/voSphericalParameter;->m_fRotateMatrix:[F

    .line 11
    iput p3, p0, Lcom/visualon/OSMPSensor/voSphericalParameter;->m_fFov:F

    return-void
.end method
