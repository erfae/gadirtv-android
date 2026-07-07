.class public Lcom/magoware/magoware/webtv/players/exoplayer/ChannelClickEvent;
.super Ljava/lang/Object;
.source "ChannelClickEvent.java"


# instance fields
.field private final channelNumber:I

.field private temporary_id:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "categoryId"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ChannelClickEvent;->channelNumber:I

    .line 13
    iput p2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ChannelClickEvent;->temporary_id:I

    return-void
.end method


# virtual methods
.method public getCategoryId()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ChannelClickEvent;->temporary_id:I

    return v0
.end method

.method public getChannelNumber()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ChannelClickEvent;->channelNumber:I

    return v0
.end method
