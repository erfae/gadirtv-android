.class public Lcom/mikepenz/iconics/utils/RemoveInfo;
.super Ljava/lang/Object;
.source "RemoveInfo.java"


# instance fields
.field private count:I

.field private start:I

.field private total:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/mikepenz/iconics/utils/RemoveInfo;->start:I

    .line 10
    iput p2, p0, Lcom/mikepenz/iconics/utils/RemoveInfo;->count:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/mikepenz/iconics/utils/RemoveInfo;->start:I

    .line 15
    iput p2, p0, Lcom/mikepenz/iconics/utils/RemoveInfo;->count:I

    .line 16
    iput p3, p0, Lcom/mikepenz/iconics/utils/RemoveInfo;->total:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/mikepenz/iconics/utils/RemoveInfo;->count:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/mikepenz/iconics/utils/RemoveInfo;->start:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/mikepenz/iconics/utils/RemoveInfo;->total:I

    return v0
.end method

.method public setCount(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/mikepenz/iconics/utils/RemoveInfo;->count:I

    return-void
.end method

.method public setStart(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/mikepenz/iconics/utils/RemoveInfo;->start:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/mikepenz/iconics/utils/RemoveInfo;->total:I

    return-void
.end method
