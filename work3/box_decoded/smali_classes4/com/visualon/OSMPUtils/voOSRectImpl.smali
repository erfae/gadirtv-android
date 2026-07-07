.class public Lcom/visualon/OSMPUtils/voOSRectImpl;
.super Ljava/lang/Object;
.source "voOSRectImpl.java"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSRect;


# instance fields
.field mBottom:I

.field mLeft:I

.field mRight:I

.field mTop:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSRectImpl;->mLeft:I

    .line 40
    iput p2, p0, Lcom/visualon/OSMPUtils/voOSRectImpl;->mTop:I

    .line 41
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSRectImpl;->mRight:I

    .line 42
    iput p4, p0, Lcom/visualon/OSMPUtils/voOSRectImpl;->mBottom:I

    return-void
.end method

.method public static parse(Landroid/os/Parcel;)Lcom/visualon/OSMPUtils/voOSRectImpl;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 54
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 55
    new-instance v4, Lcom/visualon/OSMPUtils/voOSRectImpl;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSRectImpl;-><init>(IIII)V

    .line 57
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object v4
.end method


# virtual methods
.method public Bottom()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSRectImpl;->mBottom:I

    return v0
.end method

.method public Left()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSRectImpl;->mLeft:I

    return v0
.end method

.method public Right()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSRectImpl;->mRight:I

    return v0
.end method

.method public Top()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSRectImpl;->mTop:I

    return v0
.end method
