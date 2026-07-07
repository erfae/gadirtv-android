.class Lcom/verimatrix/vdc/SendEvent;
.super Ljava/lang/Object;
.source "SendEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verimatrix/vdc/SendEvent$FilterFlag;
    }
.end annotation


# instance fields
.field private assetised:Z

.field c:Landroid/content/Context;

.field configuration:Lcom/verimatrix/vdc/Configuration;

.field private d0:J

.field private d1:J

.field private d2:J

.field private d3:J

.field private dlt:J

.field private dms:J

.field private dt:J

.field private eid:J

.field private filterFlag:Ljava/lang/String;

.field private flags:J

.field private flagsAddition:J

.field private md:J

.field private name:Ljava/lang/String;

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r0:J

.field private r1:J

.field private r2:J

.field private r3:J

.field private sq:J

.field private timestamp:J


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/verimatrix/vdc/SendEvent;->assetised:Z

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->eid:J

    .line 45
    iput-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->flags:J

    .line 46
    iput-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->flagsAddition:J

    .line 47
    iput-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->dt:J

    .line 48
    iput-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->dms:J

    .line 49
    iput-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->d0:J

    .line 50
    iput-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->d1:J

    .line 51
    iput-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->d2:J

    .line 52
    iput-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->d3:J

    .line 53
    iput-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->r0:J

    .line 54
    iput-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->r1:J

    .line 55
    iput-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->r2:J

    .line 56
    iput-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->r3:J

    .line 57
    iput-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->dlt:J

    .line 58
    iput-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->sq:J

    .line 59
    iput-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->md:J

    .line 62
    iput-object p1, p0, Lcom/verimatrix/vdc/SendEvent;->c:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/verimatrix/vdc/SendEvent;->configuration:Lcom/verimatrix/vdc/Configuration;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;JLjava/util/Map;JJJJJJJJJJJJJJJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/verimatrix/vdc/Configuration;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JJJJJJJJJJJJJJJ)V"
        }
    .end annotation

    move-object v0, p0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 42
    iput-boolean v1, v0, Lcom/verimatrix/vdc/SendEvent;->assetised:Z

    const-wide/16 v1, 0x0

    .line 44
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->eid:J

    .line 45
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->flags:J

    .line 46
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->flagsAddition:J

    .line 47
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->dt:J

    .line 48
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->dms:J

    .line 49
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->d0:J

    .line 50
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->d1:J

    .line 51
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->d2:J

    .line 52
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->d3:J

    .line 53
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->r0:J

    .line 54
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->r1:J

    .line 55
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->r2:J

    .line 56
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->r3:J

    .line 57
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->dlt:J

    .line 58
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->sq:J

    .line 59
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->md:J

    move-object v1, p1

    .line 71
    iput-object v1, v0, Lcom/verimatrix/vdc/SendEvent;->c:Landroid/content/Context;

    move-object v1, p2

    .line 72
    iput-object v1, v0, Lcom/verimatrix/vdc/SendEvent;->configuration:Lcom/verimatrix/vdc/Configuration;

    move-object v1, p3

    .line 73
    iput-object v1, v0, Lcom/verimatrix/vdc/SendEvent;->name:Ljava/lang/String;

    move-wide v1, p4

    .line 74
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->timestamp:J

    move-object v1, p6

    .line 75
    iput-object v1, v0, Lcom/verimatrix/vdc/SendEvent;->properties:Ljava/util/Map;

    move-wide v1, p7

    .line 76
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->eid:J

    move-wide v1, p9

    .line 77
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->flags:J

    move-wide v1, p11

    .line 78
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->dt:J

    move-wide/from16 v1, p13

    .line 79
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->dms:J

    move-wide/from16 v1, p15

    .line 80
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->d0:J

    move-wide/from16 v1, p17

    .line 81
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->d1:J

    move-wide/from16 v1, p19

    .line 82
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->d2:J

    move-wide/from16 v1, p21

    .line 83
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->d3:J

    move-wide/from16 v1, p23

    .line 84
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->r0:J

    move-wide/from16 v1, p25

    .line 85
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->r1:J

    move-wide/from16 v1, p27

    .line 86
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->r2:J

    move-wide/from16 v1, p29

    .line 87
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->r3:J

    move-wide/from16 v1, p31

    .line 88
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->dlt:J

    move-wide/from16 v1, p33

    .line 89
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->sq:J

    move-wide/from16 v1, p35

    .line 90
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->md:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;JLjava/util/Map;JJJJJJJJJJJJJJJJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/verimatrix/vdc/Configuration;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JJJJJJJJJJJJJJJJ)V"
        }
    .end annotation

    move-object v0, p0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 42
    iput-boolean v1, v0, Lcom/verimatrix/vdc/SendEvent;->assetised:Z

    const-wide/16 v1, 0x0

    .line 44
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->eid:J

    .line 45
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->flags:J

    .line 46
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->flagsAddition:J

    .line 47
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->dt:J

    .line 48
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->dms:J

    .line 49
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->d0:J

    .line 50
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->d1:J

    .line 51
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->d2:J

    .line 52
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->d3:J

    .line 53
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->r0:J

    .line 54
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->r1:J

    .line 55
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->r2:J

    .line 56
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->r3:J

    .line 57
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->dlt:J

    .line 58
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->sq:J

    .line 59
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->md:J

    move-object v1, p1

    .line 98
    iput-object v1, v0, Lcom/verimatrix/vdc/SendEvent;->c:Landroid/content/Context;

    move-object v1, p2

    .line 99
    iput-object v1, v0, Lcom/verimatrix/vdc/SendEvent;->configuration:Lcom/verimatrix/vdc/Configuration;

    move-object v1, p3

    .line 100
    iput-object v1, v0, Lcom/verimatrix/vdc/SendEvent;->name:Ljava/lang/String;

    move-wide v1, p4

    .line 101
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->timestamp:J

    move-object v1, p6

    .line 102
    iput-object v1, v0, Lcom/verimatrix/vdc/SendEvent;->properties:Ljava/util/Map;

    move-wide v1, p7

    .line 103
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->eid:J

    move-wide v1, p9

    .line 104
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->flags:J

    move-wide v1, p11

    .line 105
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->flagsAddition:J

    move-wide/from16 v1, p13

    .line 106
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->dt:J

    move-wide/from16 v1, p15

    .line 107
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->dms:J

    move-wide/from16 v1, p17

    .line 108
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->d0:J

    move-wide/from16 v1, p19

    .line 109
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->d1:J

    move-wide/from16 v1, p21

    .line 110
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->d2:J

    move-wide/from16 v1, p23

    .line 111
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->d3:J

    move-wide/from16 v1, p25

    .line 112
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->r0:J

    move-wide/from16 v1, p27

    .line 113
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->r1:J

    move-wide/from16 v1, p29

    .line 114
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->r2:J

    move-wide/from16 v1, p31

    .line 115
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->r3:J

    move-wide/from16 v1, p33

    .line 116
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->dlt:J

    move-wide/from16 v1, p35

    .line 117
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->sq:J

    move-wide/from16 v1, p37

    .line 118
    iput-wide v1, v0, Lcom/verimatrix/vdc/SendEvent;->md:J

    return-void
.end method


# virtual methods
.method public getD0()J
    .locals 2

    .line 315
    iget-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->d0:J

    return-wide v0
.end method

.method public getD1()J
    .locals 2

    .line 335
    iget-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->d1:J

    return-wide v0
.end method

.method public getD2()J
    .locals 2

    .line 355
    iget-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->d2:J

    return-wide v0
.end method

.method public getD3()J
    .locals 2

    .line 375
    iget-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->d3:J

    return-wide v0
.end method

.method public getDlt()J
    .locals 2

    .line 474
    iget-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->dlt:J

    return-wide v0
.end method

.method public getDms()J
    .locals 2

    .line 296
    iget-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->dms:J

    return-wide v0
.end method

.method public getDt()J
    .locals 2

    .line 278
    iget-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->dt:J

    return-wide v0
.end method

.method public getEventId()J
    .locals 2

    .line 162
    iget-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->eid:J

    return-wide v0
.end method

.method public getFilterFlag()Ljava/lang/String;
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/verimatrix/vdc/SendEvent;->filterFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getFlagName()Ljava/lang/String;
    .locals 5

    .line 240
    iget-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->flags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const-string v0, "EMERGENCY"

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x10000

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    const-string v0, "ALERT"

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x20000

    cmp-long v4, v2, v0

    if-nez v4, :cond_2

    const-string v0, "CRITICAL"

    goto :goto_0

    :cond_2
    const-wide/32 v2, 0x30000

    cmp-long v4, v2, v0

    if-nez v4, :cond_3

    const-string v0, "ERROR"

    goto :goto_0

    :cond_3
    const-wide/32 v2, 0x40000

    cmp-long v4, v2, v0

    if-nez v4, :cond_4

    const-string v0, "WARNING"

    goto :goto_0

    :cond_4
    const-wide/32 v2, 0x50000

    cmp-long v4, v2, v0

    if-nez v4, :cond_5

    const-string v0, "NOTICE"

    goto :goto_0

    :cond_5
    const-wide/32 v2, 0x60000

    cmp-long v4, v2, v0

    if-nez v4, :cond_6

    const-string v0, "INFO"

    goto :goto_0

    :cond_6
    const-wide/32 v2, 0x70000

    cmp-long v4, v2, v0

    if-nez v4, :cond_7

    const-string v0, "DEBUG"

    goto :goto_0

    :cond_7
    const-wide/32 v2, 0x80000

    cmp-long v4, v2, v0

    if-nez v4, :cond_8

    const-string v0, "CLEARANCE"

    goto :goto_0

    :cond_8
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0
.end method

.method public getFlags()J
    .locals 2

    .line 203
    iget-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->flags:J

    return-wide v0
.end method

.method public getFlagsAddition()J
    .locals 2

    .line 265
    iget-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->flagsAddition:J

    return-wide v0
.end method

.method public getMd()J
    .locals 2

    .line 510
    iget-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->md:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/verimatrix/vdc/SendEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/verimatrix/vdc/SendEvent;->properties:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/SendEvent;->properties:Ljava/util/Map;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/verimatrix/vdc/SendEvent;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public getR0()J
    .locals 2

    .line 395
    iget-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->r0:J

    return-wide v0
.end method

.method public getR1()J
    .locals 2

    .line 415
    iget-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->r1:J

    return-wide v0
.end method

.method public getR2()J
    .locals 2

    .line 435
    iget-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->r2:J

    return-wide v0
.end method

.method public getR3()J
    .locals 2

    .line 455
    iget-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->r3:J

    return-wide v0
.end method

.method public getSq()J
    .locals 2

    .line 492
    iget-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->sq:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 130
    iget-wide v0, p0, Lcom/verimatrix/vdc/SendEvent;->timestamp:J

    return-wide v0
.end method

.method public isAssetised()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/verimatrix/vdc/SendEvent;->assetised:Z

    return v0
.end method

.method public setAssetised(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/verimatrix/vdc/SendEvent;->assetised:Z

    return-void
.end method

.method public setD0(J)V
    .locals 0

    .line 325
    iput-wide p1, p0, Lcom/verimatrix/vdc/SendEvent;->d0:J

    return-void
.end method

.method public setD1(J)V
    .locals 0

    .line 345
    iput-wide p1, p0, Lcom/verimatrix/vdc/SendEvent;->d1:J

    return-void
.end method

.method public setD2(J)V
    .locals 0

    .line 365
    iput-wide p1, p0, Lcom/verimatrix/vdc/SendEvent;->d2:J

    return-void
.end method

.method public setD3(J)V
    .locals 0

    .line 385
    iput-wide p1, p0, Lcom/verimatrix/vdc/SendEvent;->d3:J

    return-void
.end method

.method public setDlt(J)V
    .locals 0

    .line 483
    iput-wide p1, p0, Lcom/verimatrix/vdc/SendEvent;->dlt:J

    return-void
.end method

.method public setDms(J)V
    .locals 0

    .line 305
    iput-wide p1, p0, Lcom/verimatrix/vdc/SendEvent;->dms:J

    return-void
.end method

.method public setDt(J)V
    .locals 0

    .line 287
    iput-wide p1, p0, Lcom/verimatrix/vdc/SendEvent;->dt:J

    return-void
.end method

.method public setEventId(J)V
    .locals 0

    .line 171
    iput-wide p1, p0, Lcom/verimatrix/vdc/SendEvent;->eid:J

    return-void
.end method

.method public setFilterFlag(Ljava/lang/String;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/verimatrix/vdc/SendEvent;->filterFlag:Ljava/lang/String;

    return-void
.end method

.method public setFlags(J)V
    .locals 0

    .line 235
    iput-wide p1, p0, Lcom/verimatrix/vdc/SendEvent;->flags:J

    return-void
.end method

.method public setFlagsAddition(J)V
    .locals 0

    .line 269
    iput-wide p1, p0, Lcom/verimatrix/vdc/SendEvent;->flagsAddition:J

    return-void
.end method

.method public setMd(J)V
    .locals 0

    .line 519
    iput-wide p1, p0, Lcom/verimatrix/vdc/SendEvent;->md:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/verimatrix/vdc/SendEvent;->name:Ljava/lang/String;

    return-void
.end method

.method public setProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/verimatrix/vdc/SendEvent;->properties:Ljava/util/Map;

    return-void
.end method

.method public setR0(J)V
    .locals 0

    .line 405
    iput-wide p1, p0, Lcom/verimatrix/vdc/SendEvent;->r0:J

    return-void
.end method

.method public setR1(J)V
    .locals 0

    .line 425
    iput-wide p1, p0, Lcom/verimatrix/vdc/SendEvent;->r1:J

    return-void
.end method

.method public setR2(J)V
    .locals 0

    .line 445
    iput-wide p1, p0, Lcom/verimatrix/vdc/SendEvent;->r2:J

    return-void
.end method

.method public setR3(J)V
    .locals 0

    .line 465
    iput-wide p1, p0, Lcom/verimatrix/vdc/SendEvent;->r3:J

    return-void
.end method

.method public setSq(J)V
    .locals 0

    .line 501
    iput-wide p1, p0, Lcom/verimatrix/vdc/SendEvent;->sq:J

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 134
    iput-wide p1, p0, Lcom/verimatrix/vdc/SendEvent;->timestamp:J

    return-void
.end method
