.class Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;
.super Ljava/lang/Object;
.source "VOOSMPAnalyticsInfoImpl.java"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsInfo;


# instance fields
.field private mAverageDecodeTime:I

.field private mAverageRenderTime:I

.field private mCPULoad:I

.field private mCodecDropNum:I

.field private mCodecErrors:[I

.field private mCodecErrorsNum:I

.field private mCodecTimeNum:I

.field private mDecodedNum:I

.field private mFrequency:I

.field private mJitterNum:I

.field private mLastTime:I

.field private mMaxFrequency:I

.field private mRenderDropNum:I

.field private mRenderNum:I

.field private mRenderTimeNum:I

.field private mSourceDropNum:I

.field private mSourceTimeNum:I

.field private mTotalCPULoad:I

.field private mWorstDecodeTime:I

.field private mWorstRenderTime:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mLastTime:I

    .line 48
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mSourceDropNum:I

    .line 49
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecDropNum:I

    .line 50
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mRenderDropNum:I

    .line 51
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mDecodedNum:I

    .line 52
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mRenderNum:I

    .line 53
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mSourceTimeNum:I

    .line 54
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecTimeNum:I

    .line 55
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mRenderTimeNum:I

    .line 56
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mJitterNum:I

    .line 57
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecErrorsNum:I

    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecErrors:[I

    .line 59
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCPULoad:I

    .line 60
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mFrequency:I

    .line 61
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mMaxFrequency:I

    .line 62
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mWorstDecodeTime:I

    .line 63
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mWorstRenderTime:I

    .line 64
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mAverageDecodeTime:I

    .line 65
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mAverageRenderTime:I

    .line 66
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mTotalCPULoad:I

    return-void
.end method


# virtual methods
.method public getAverageDecodeTime()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mAverageDecodeTime:I

    return v0
.end method

.method public getAverageRenderTime()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mAverageRenderTime:I

    return v0
.end method

.method public getCPULoad()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCPULoad:I

    return v0
.end method

.method public getCodecDropNum()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecDropNum:I

    return v0
.end method

.method public getCodecErrors()[I
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecErrors:[I

    return-object v0
.end method

.method public getCodecErrorsNum()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecErrorsNum:I

    return v0
.end method

.method public getCodecTimeNum()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecTimeNum:I

    return v0
.end method

.method public getDecodedNum()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mDecodedNum:I

    return v0
.end method

.method public getFrequency()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mFrequency:I

    return v0
.end method

.method public getJitterNum()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mJitterNum:I

    return v0
.end method

.method public getLastTime()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mLastTime:I

    return v0
.end method

.method public getMaxFrequency()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mMaxFrequency:I

    return v0
.end method

.method public getRenderDropNum()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mRenderDropNum:I

    return v0
.end method

.method public getRenderNum()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mRenderNum:I

    return v0
.end method

.method public getRenderTimeNum()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mRenderTimeNum:I

    return v0
.end method

.method public getSourceDropNum()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mSourceDropNum:I

    return v0
.end method

.method public getSourceTimeNum()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mSourceTimeNum:I

    return v0
.end method

.method public getTotalCPULoad()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mTotalCPULoad:I

    return v0
.end method

.method public getWorstDecodeTime()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mWorstDecodeTime:I

    return v0
.end method

.method public getWorstRenderTime()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mWorstRenderTime:I

    return v0
.end method

.method public parse(Landroid/os/Parcel;)V
    .locals 3

    const/4 v0, 0x0

    .line 350
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mLastTime:I

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mSourceDropNum:I

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecDropNum:I

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mRenderDropNum:I

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mDecodedNum:I

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mRenderNum:I

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mSourceTimeNum:I

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecTimeNum:I

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mRenderTimeNum:I

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mJitterNum:I

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecErrorsNum:I

    .line 362
    :goto_0
    iget v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecErrorsNum:I

    if-ge v0, v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecErrors:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCPULoad:I

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mFrequency:I

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mMaxFrequency:I

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mWorstDecodeTime:I

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mWorstRenderTime:I

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mAverageDecodeTime:I

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mAverageRenderTime:I

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mTotalCPULoad:I

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method public setAverageDecodeTime(I)V
    .locals 0

    .line 330
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mAverageDecodeTime:I

    return-void
.end method

.method public setAverageRenderTime(I)V
    .locals 0

    .line 338
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mAverageRenderTime:I

    return-void
.end method

.method public setCPULoad(I)V
    .locals 0

    .line 290
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCPULoad:I

    return-void
.end method

.method public setCodecDropNum(I)V
    .locals 0

    .line 210
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecDropNum:I

    return-void
.end method

.method public setCodecErrors([I)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecErrors:[I

    return-void
.end method

.method public setCodecErrorsNum(I)V
    .locals 0

    .line 274
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecErrorsNum:I

    return-void
.end method

.method public setCodecTimeNum(I)V
    .locals 0

    .line 250
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecTimeNum:I

    return-void
.end method

.method public setDecodedNum(I)V
    .locals 0

    .line 226
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mDecodedNum:I

    return-void
.end method

.method public setFrequency(I)V
    .locals 0

    .line 298
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mFrequency:I

    return-void
.end method

.method public setJitterNum(I)V
    .locals 0

    .line 266
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mJitterNum:I

    return-void
.end method

.method public setLastTime(I)V
    .locals 0

    .line 194
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mLastTime:I

    return-void
.end method

.method public setMaxFrequency(I)V
    .locals 0

    .line 306
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mMaxFrequency:I

    return-void
.end method

.method public setRenderDropNum(I)V
    .locals 0

    .line 218
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mRenderDropNum:I

    return-void
.end method

.method public setRenderNum(I)V
    .locals 0

    .line 234
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mRenderNum:I

    return-void
.end method

.method public setRenderTimeNum(I)V
    .locals 0

    .line 258
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mRenderTimeNum:I

    return-void
.end method

.method public setSourceDropNum(I)V
    .locals 0

    .line 202
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mSourceDropNum:I

    return-void
.end method

.method public setSourceTimeNum(I)V
    .locals 0

    .line 242
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mSourceTimeNum:I

    return-void
.end method

.method public setTotalCPULoad(I)V
    .locals 0

    .line 346
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mTotalCPULoad:I

    return-void
.end method

.method public setWorstDecodeTime(I)V
    .locals 0

    .line 314
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mWorstDecodeTime:I

    return-void
.end method

.method public setWorstRenderTime(I)V
    .locals 0

    .line 322
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mWorstRenderTime:I

    return-void
.end method
