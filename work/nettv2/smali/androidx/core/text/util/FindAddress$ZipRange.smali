.class Landroidx/core/text/util/FindAddress$ZipRange;
.super Ljava/lang/Object;
.source "FindAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/util/FindAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZipRange"
.end annotation


# instance fields
.field public mException1:I

.field public mException2:I

.field public mHigh:I

.field public mLow:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mLow:I

    .line 3
    iput p2, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mHigh:I

    .line 4
    iput p3, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mException1:I

    .line 5
    iput p4, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mException2:I

    return-void
.end method
