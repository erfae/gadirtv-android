.class public Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;
.super Ljava/lang/Object;
.source "voOSVideoPerformanceImpl.java"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSVideoPerformance;


# instance fields
.field mAverageDecodeTime:I

.field mAverageRenderTime:I

.field mCPULoad:I

.field mCodecDropNum:I

.field mCodecErrors:[I

.field mCodecErrorsNum:I

.field mCodecTimeNum:I

.field mDecodedNum:I

.field mFrequency:I

.field mJitterNum:I

.field mLastTime:I

.field mMaxFrequency:I

.field mRenderDropNum:I

.field mRenderNum:I

.field mRenderTimeNum:I

.field mSourceDropNum:I

.field mSourceTimeNum:I

.field mTotalCPULoad:I

.field mTotalCodecDropNum:I

.field mTotalDecodedNum:I

.field mTotalPlaybackDuration:I

.field mTotalRenderDropNum:I

.field mTotalRenderNum:I

.field mTotalSourceDropNum:I

.field mWorstDecodeTime:I

.field mWorstRenderTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIIIIIII[IIIIIIIIIIIIIII)V
    .locals 2

    move-object v0, p0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 139
    iput v1, v0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mLastTime:I

    move v1, p2

    .line 140
    iput v1, v0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mSourceDropNum:I

    move v1, p3

    .line 141
    iput v1, v0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecDropNum:I

    move v1, p4

    .line 142
    iput v1, v0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mRenderDropNum:I

    move v1, p5

    .line 143
    iput v1, v0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mDecodedNum:I

    move v1, p6

    .line 144
    iput v1, v0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mRenderNum:I

    move v1, p7

    .line 145
    iput v1, v0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mSourceTimeNum:I

    move v1, p8

    .line 146
    iput v1, v0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecTimeNum:I

    move v1, p9

    .line 147
    iput v1, v0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mRenderTimeNum:I

    move v1, p10

    .line 148
    iput v1, v0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mJitterNum:I

    move v1, p11

    .line 149
    iput v1, v0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecErrorsNum:I

    move-object v1, p12

    .line 150
    iput-object v1, v0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecErrors:[I

    move v1, p13

    .line 151
    iput v1, v0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCPULoad:I

    move/from16 v1, p14

    .line 152
    iput v1, v0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mFrequency:I

    move/from16 v1, p15

    .line 153
    iput v1, v0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mMaxFrequency:I

    move/from16 v1, p16

    .line 154
    iput v1, v0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mWorstDecodeTime:I

    move/from16 v1, p17

    .line 155
    iput v1, v0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mWorstRenderTime:I

    move/from16 v1, p18

    .line 156
    iput v1, v0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mAverageDecodeTime:I

    move/from16 v1, p19

    .line 157
    iput v1, v0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mAverageRenderTime:I

    move/from16 v1, p20

    .line 158
    iput v1, v0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalCPULoad:I

    return-void
.end method


# virtual methods
.method public AverageDecodeTime()I
    .locals 1

    .line 248
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mAverageDecodeTime:I

    return v0
.end method

.method public AverageRenderTime()I
    .locals 1

    .line 253
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mAverageRenderTime:I

    return v0
.end method

.method public CPULoad()I
    .locals 1

    .line 223
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCPULoad:I

    return v0
.end method

.method public CodecDropNum()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecDropNum:I

    return v0
.end method

.method public CodecErrors()[I
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecErrors:[I

    return-object v0
.end method

.method public CodecErrorsNum()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecErrorsNum:I

    return v0
.end method

.method public CodecTimeNum()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecTimeNum:I

    return v0
.end method

.method public DecodedNum()I
    .locals 1

    .line 183
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mDecodedNum:I

    return v0
.end method

.method public Frequency()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mFrequency:I

    return v0
.end method

.method public JitterNum()I
    .locals 1

    .line 208
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mJitterNum:I

    return v0
.end method

.method public LastTime()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mLastTime:I

    return v0
.end method

.method public MaxFrequency()I
    .locals 1

    .line 233
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mMaxFrequency:I

    return v0
.end method

.method public RenderDropNum()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mRenderDropNum:I

    return v0
.end method

.method public RenderNum()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mRenderNum:I

    return v0
.end method

.method public RenderTimeNum()I
    .locals 1

    .line 203
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mRenderTimeNum:I

    return v0
.end method

.method public SourceDropNum()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mSourceDropNum:I

    return v0
.end method

.method public SourceTimeNum()I
    .locals 1

    .line 193
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mSourceTimeNum:I

    return v0
.end method

.method public TotalCPULoad()I
    .locals 1

    .line 258
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalCPULoad:I

    return v0
.end method

.method public TotalCodecDropNum()I
    .locals 1

    .line 273
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalCodecDropNum:I

    return v0
.end method

.method public TotalDecodedNum()I
    .locals 1

    .line 283
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalDecodedNum:I

    return v0
.end method

.method public TotalPlaybackDuration()I
    .locals 1

    .line 263
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalPlaybackDuration:I

    return v0
.end method

.method public TotalRenderDropNum()I
    .locals 1

    .line 278
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalRenderDropNum:I

    return v0
.end method

.method public TotalRenderNum()I
    .locals 1

    .line 288
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalRenderNum:I

    return v0
.end method

.method public TotalSourceDropNum()I
    .locals 1

    .line 268
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalSourceDropNum:I

    return v0
.end method

.method public WorstDecodeTime()I
    .locals 1

    .line 238
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mWorstDecodeTime:I

    return v0
.end method

.method public WorstRenderTime()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mWorstRenderTime:I

    return v0
.end method

.method public parser(Landroid/os/Parcel;)V
    .locals 3

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mLastTime:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mSourceDropNum:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecDropNum:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mRenderDropNum:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mDecodedNum:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mRenderNum:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mSourceTimeNum:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecTimeNum:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mRenderTimeNum:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mJitterNum:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecErrorsNum:I

    .line 79
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecErrors:[I

    const/4 v0, 0x0

    .line 80
    :goto_0
    iget v1, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecErrorsNum:I

    if-ge v0, v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecErrors:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCPULoad:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mFrequency:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mMaxFrequency:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mWorstDecodeTime:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mWorstRenderTime:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mAverageDecodeTime:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mAverageRenderTime:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalCPULoad:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalPlaybackDuration:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalSourceDropNum:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalCodecDropNum:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalRenderDropNum:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalDecodedNum:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalRenderNum:I

    return-void
.end method
