.class public Lcom/verimatrix/vdc/Rate;
.super Ljava/lang/Object;
.source "Rate.java"


# static fields
.field private static final KILO_PREFIX:J = 0x3e8L


# instance fields
.field private average:F

.field private count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs isEmpty([Lcom/verimatrix/vdc/Rate;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 48
    array-length v1, p0

    if-eqz v1, :cond_1

    .line 49
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 50
    iget v3, v3, Lcom/verimatrix/vdc/Rate;->count:I

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public addNewRate(J)V
    .locals 3

    .line 32
    iget v0, p0, Lcom/verimatrix/vdc/Rate;->count:I

    add-int/lit8 v1, v0, 0x1

    .line 33
    iget v2, p0, Lcom/verimatrix/vdc/Rate;->average:F

    int-to-float v0, v0

    mul-float v2, v2, v0

    long-to-float p1, p1

    add-float/2addr v2, p1

    int-to-float p1, v1

    div-float/2addr v2, p1

    iput v2, p0, Lcom/verimatrix/vdc/Rate;->average:F

    .line 34
    iput v1, p0, Lcom/verimatrix/vdc/Rate;->count:I

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/verimatrix/vdc/Rate;->average:F

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/verimatrix/vdc/Rate;->count:I

    return-void
.end method

.method public getAverage()J
    .locals 2

    .line 24
    iget v0, p0, Lcom/verimatrix/vdc/Rate;->average:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public getAverageTimesThou()J
    .locals 2

    .line 17
    iget v0, p0, Lcom/verimatrix/vdc/Rate;->average:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-long v0, v0

    return-wide v0
.end method
