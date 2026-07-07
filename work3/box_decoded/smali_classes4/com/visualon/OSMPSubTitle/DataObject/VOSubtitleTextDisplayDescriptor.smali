.class public Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextDisplayDescriptor;
.super Ljava/lang/Object;
.source "VOSubtitleTextDisplayDescriptor.java"


# instance fields
.field private scrollDirection:I

.field private wrap:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextDisplayDescriptor;->wrap:I

    .line 23
    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextDisplayDescriptor;->scrollDirection:I

    return-void
.end method


# virtual methods
.method public getScrollDirection()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextDisplayDescriptor;->scrollDirection:I

    return v0
.end method

.method public getWrap()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextDisplayDescriptor;->wrap:I

    return v0
.end method
