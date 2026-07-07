.class public Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;
.super Ljava/lang/Object;
.source "voOSSEIPicTimingImpl.java"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSSEIPicTiming;


# static fields
.field private static TAG:Ljava/lang/String; = "@@@voOSSEIPicTimingImpl"


# instance fields
.field private mCpbDpbDelaysPresentFlag:I

.field private mCpbRemovalDelay:I

.field private mDpbOutputDelay:I

.field private mNumClockTs:I

.field private mOSClockArr:[Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;

.field private mPictureStructure:I

.field private mPictureStructurePresentFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IIIIII[Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;

    .line 49
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mCpbDpbDelaysPresentFlag:I

    .line 50
    iput p2, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mCpbRemovalDelay:I

    .line 51
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mDpbOutputDelay:I

    .line 52
    iput p4, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mPictureStructurePresentFlag:I

    .line 53
    iput p5, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mPictureStructure:I

    .line 54
    iput p6, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mNumClockTs:I

    .line 55
    iput-object p7, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;

    return-void
.end method

.method public static parse([I)Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;
    .locals 36

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 96
    array-length v2, v0

    const/16 v3, 0x33

    if-ge v2, v3, :cond_0

    goto/16 :goto_0

    .line 103
    :cond_0
    new-instance v2, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;

    const/4 v3, 0x6

    aget v5, v0, v3

    const/4 v3, 0x7

    aget v6, v0, v3

    const/16 v3, 0x8

    aget v7, v0, v3

    const/16 v3, 0x9

    aget v8, v0, v3

    const/16 v3, 0xa

    aget v9, v0, v3

    const/16 v3, 0xb

    aget v10, v0, v3

    const/16 v3, 0xc

    aget v11, v0, v3

    const/16 v3, 0xd

    aget v12, v0, v3

    const/16 v3, 0xe

    aget v13, v0, v3

    const/16 v3, 0xf

    aget v14, v0, v3

    const/16 v3, 0x10

    aget v15, v0, v3

    const/16 v3, 0x11

    aget v16, v0, v3

    const/16 v3, 0x12

    aget v17, v0, v3

    const/16 v3, 0x13

    aget v18, v0, v3

    const/16 v3, 0x14

    aget v19, v0, v3

    move-object v4, v2

    invoke-direct/range {v4 .. v19}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;-><init>(IIIIIIIIIIIIIII)V

    .line 107
    new-instance v3, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;

    const/16 v4, 0x15

    aget v21, v0, v4

    const/16 v4, 0x16

    aget v22, v0, v4

    const/16 v4, 0x17

    aget v23, v0, v4

    const/16 v4, 0x18

    aget v24, v0, v4

    const/16 v4, 0x19

    aget v25, v0, v4

    const/16 v4, 0x1a

    aget v26, v0, v4

    const/16 v4, 0x1b

    aget v27, v0, v4

    const/16 v4, 0x1c

    aget v28, v0, v4

    const/16 v4, 0x1d

    aget v29, v0, v4

    const/16 v4, 0x1e

    aget v30, v0, v4

    const/16 v4, 0x1f

    aget v31, v0, v4

    const/16 v4, 0x20

    aget v32, v0, v4

    const/16 v4, 0x21

    aget v33, v0, v4

    const/16 v4, 0x22

    aget v34, v0, v4

    const/16 v4, 0x23

    aget v35, v0, v4

    move-object/from16 v20, v3

    invoke-direct/range {v20 .. v35}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;-><init>(IIIIIIIIIIIIIII)V

    .line 111
    new-instance v20, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;

    const/16 v4, 0x24

    aget v5, v0, v4

    const/16 v4, 0x25

    aget v6, v0, v4

    const/16 v4, 0x26

    aget v7, v0, v4

    const/16 v4, 0x27

    aget v8, v0, v4

    const/16 v4, 0x28

    aget v9, v0, v4

    const/16 v4, 0x29

    aget v10, v0, v4

    const/16 v4, 0x2a

    aget v11, v0, v4

    const/16 v4, 0x2b

    aget v12, v0, v4

    const/16 v4, 0x2c

    aget v13, v0, v4

    const/16 v4, 0x2d

    aget v14, v0, v4

    const/16 v4, 0x2e

    aget v15, v0, v4

    const/16 v4, 0x2f

    aget v16, v0, v4

    const/16 v4, 0x30

    aget v17, v0, v4

    const/16 v4, 0x31

    aget v18, v0, v4

    const/16 v4, 0x32

    aget v19, v0, v4

    move-object/from16 v4, v20

    invoke-direct/range {v4 .. v19}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;-><init>(IIIIIIIIIIIIIII)V

    const/4 v4, 0x3

    new-array v12, v4, [Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;

    aput-object v2, v12, v1

    const/4 v2, 0x1

    aput-object v3, v12, v2

    const/4 v3, 0x2

    aput-object v20, v12, v3

    .line 116
    new-instance v13, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;

    aget v6, v0, v1

    aget v7, v0, v2

    aget v8, v0, v3

    aget v9, v0, v4

    const/4 v1, 0x4

    aget v10, v0, v1

    const/4 v1, 0x5

    aget v11, v0, v1

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;-><init>(IIIIII[Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;)V

    return-object v13

    .line 98
    :cond_1
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    sget-object v2, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "voOSSEIPicTimingImpl parse failed, data is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getClock()[Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;

    return-object v0
.end method

.method public getCpbDpbDelaysPresentFlag()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mCpbDpbDelaysPresentFlag:I

    return v0
.end method

.method public getCpbRemovalDelay()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mCpbRemovalDelay:I

    return v0
.end method

.method public getDpbOutputDelay()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mDpbOutputDelay:I

    return v0
.end method

.method public getNumClockTs()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mNumClockTs:I

    return v0
.end method

.method public getPictureStructure()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mPictureStructure:I

    return v0
.end method

.method public getPictureStructurePresentFlag()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mPictureStructurePresentFlag:I

    return v0
.end method
