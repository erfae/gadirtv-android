.class public Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;
.super Ljava/lang/Object;
.source "VOSubtitleInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo$SortByZOrder;
    }
.end annotation


# instance fields
.field public boundingBoxRect:Landroid/graphics/Rect;

.field public isForID3:Z

.field public jsonString:Ljava/lang/String;

.field public maxDuration:I

.field public rectBottom:F

.field public rectBottomString:Ljava/lang/String;

.field public rectLeft:F

.field public rectLeftString:Ljava/lang/String;

.field public rectRight:F

.field public rectRightString:Ljava/lang/String;

.field public rectTop:F

.field public rectTopString:Ljava/lang/String;

.field public subtitleEntryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;",
            ">;"
        }
    .end annotation
.end field

.field public timeStamp:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->jsonString:Ljava/lang/String;

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->timeStamp:I

    const/4 v1, -0x1

    .line 30
    iput v1, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->maxDuration:I

    .line 40
    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->isForID3:Z

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->boundingBoxRect:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    return-void
.end method

.method private getMaxDuration()I
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 63
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 64
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;

    .line 65
    iget v2, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->duration:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 67
    iput v3, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->maxDuration:I

    goto :goto_1

    .line 70
    :cond_1
    iget v2, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->duration:I

    iget v3, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->maxDuration:I

    if-le v2, v3, :cond_2

    .line 71
    iget v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->duration:I

    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->maxDuration:I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_3
    :goto_1
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->maxDuration:I

    return v0
.end method


# virtual methods
.method public getSubtitleEntryList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTimeStamp()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->timeStamp:I

    return v0
.end method

.method public sortByZIndex()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    new-instance v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo$SortByZOrder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo$SortByZOrder;-><init>(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
