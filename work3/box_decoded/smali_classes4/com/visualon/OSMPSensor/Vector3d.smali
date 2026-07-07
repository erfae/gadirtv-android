.class public Lcom/visualon/OSMPSensor/Vector3d;
.super Ljava/lang/Object;
.source "Vector3d.java"


# instance fields
.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual/range {p0 .. p6}, Lcom/visualon/OSMPSensor/Vector3d;->set(DDD)V

    return-void
.end method

.method public static add(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)V
    .locals 11

    .line 75
    iget-wide v0, p0, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    iget-wide v2, p1, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    add-double v5, v0, v2

    iget-wide v0, p0, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    iget-wide v2, p1, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    add-double v7, v0, v2

    iget-wide v0, p0, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    iget-wide p0, p1, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    add-double v9, v0, p0

    move-object v4, p2

    invoke-virtual/range {v4 .. v10}, Lcom/visualon/OSMPSensor/Vector3d;->set(DDD)V

    return-void
.end method

.method public static cross(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 83
    iget-wide v2, v0, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    iget-wide v4, v1, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    mul-double v6, v2, v4

    iget-wide v8, v0, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    iget-wide v10, v1, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    mul-double v12, v8, v10

    sub-double v15, v6, v12

    iget-wide v6, v1, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    mul-double v8, v8, v6

    iget-wide v0, v0, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    mul-double v4, v4, v0

    sub-double v17, v8, v4

    mul-double v0, v0, v10

    mul-double v2, v2, v6

    sub-double v19, v0, v2

    move-object/from16 v14, p2

    invoke-virtual/range {v14 .. v20}, Lcom/visualon/OSMPSensor/Vector3d;->set(DDD)V

    return-void
.end method

.method public static dot(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)D
    .locals 6

    .line 63
    iget-wide v0, p0, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    iget-wide v2, p1, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    mul-double v0, v0, v2

    iget-wide v2, p0, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    iget-wide v4, p1, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    iget-wide p0, p1, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    mul-double v2, v2, p0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static largestAbsComponent(Lcom/visualon/OSMPSensor/Vector3d;)I
    .locals 7

    .line 98
    iget-wide v0, p0, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 99
    iget-wide v2, p0, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 100
    iget-wide v4, p0, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const/4 p0, 0x2

    cmpl-double v6, v0, v2

    if-lez v6, :cond_1

    cmpl-double v2, v0, v4

    if-lez v2, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0

    :cond_1
    cmpl-double v0, v2, v4

    if-lez v0, :cond_2

    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method public static ortho(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)V
    .locals 3

    .line 87
    invoke-static {p0}, Lcom/visualon/OSMPSensor/Vector3d;->largestAbsComponent(Lcom/visualon/OSMPSensor/Vector3d;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    const/4 v0, 0x2

    .line 91
    :cond_0
    invoke-virtual {p1}, Lcom/visualon/OSMPSensor/Vector3d;->setZero()V

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 92
    invoke-virtual {p1, v0, v1, v2}, Lcom/visualon/OSMPSensor/Vector3d;->setComponent(ID)V

    .line 93
    invoke-static {p0, p1, p1}, Lcom/visualon/OSMPSensor/Vector3d;->cross(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)V

    .line 94
    invoke-virtual {p1}, Lcom/visualon/OSMPSensor/Vector3d;->normalize()V

    return-void
.end method

.method public static sub(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)V
    .locals 11

    .line 79
    iget-wide v0, p0, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    iget-wide v2, p1, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    sub-double v5, v0, v2

    iget-wide v0, p0, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    iget-wide v2, p1, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    sub-double v7, v0, v2

    iget-wide v0, p0, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    iget-wide p0, p1, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    sub-double v9, v0, p0

    move-object v4, p2

    invoke-virtual/range {v4 .. v10}, Lcom/visualon/OSMPSensor/Vector3d;->set(DDD)V

    return-void
.end method


# virtual methods
.method public length()D
    .locals 4

    .line 67
    iget-wide v0, p0, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    mul-double v0, v0, v0

    iget-wide v2, p0, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public normalize()V
    .locals 5

    .line 56
    invoke-virtual {p0}, Lcom/visualon/OSMPSensor/Vector3d;->length()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    .line 58
    invoke-virtual {p0, v2, v3}, Lcom/visualon/OSMPSensor/Vector3d;->scale(D)V

    :cond_0
    return-void
.end method

.method public sameValues(Lcom/visualon/OSMPSensor/Vector3d;)Z
    .locals 5

    .line 71
    iget-wide v0, p0, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    iget-wide v2, p1, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    iget-wide v2, p1, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    iget-wide v2, p1, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    cmpl-double p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public scale(D)V
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    mul-double v0, v0, p1

    iput-wide v0, p0, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    .line 51
    iget-wide v0, p0, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    mul-double v0, v0, p1

    iput-wide v0, p0, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    .line 52
    iget-wide v0, p0, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    mul-double v0, v0, p1

    iput-wide v0, p0, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    return-void
.end method

.method public set(DDD)V
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    .line 20
    iput-wide p3, p0, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    .line 21
    iput-wide p5, p0, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    return-void
.end method

.method public set(Lcom/visualon/OSMPSensor/Vector3d;)V
    .locals 2

    .line 44
    iget-wide v0, p1, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    iput-wide v0, p0, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    .line 45
    iget-wide v0, p1, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    iput-wide v0, p0, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    .line 46
    iget-wide v0, p1, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    iput-wide v0, p0, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    return-void
.end method

.method public setComponent(ID)V
    .locals 1

    if-nez p1, :cond_0

    .line 26
    iput-wide p2, p0, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 29
    iput-wide p2, p0, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    goto :goto_0

    .line 32
    :cond_1
    iput-wide p2, p0, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    :goto_0
    return-void
.end method

.method public setZero()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    .line 39
    iput-wide v0, p0, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    .line 40
    iput-wide v0, p0, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    return-void
.end method
