.class Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo$SortByZOrder;
.super Ljava/lang/Object;
.source "VOSubtitleInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortByZOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo$SortByZOrder;->this$0:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo$1;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo$SortByZOrder;-><init>(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;)I
    .locals 0

    .line 100
    invoke-virtual {p1}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->getSubtitleRectInfo()Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    move-result-object p1

    iget p1, p1, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->zOrder:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->getSubtitleRectInfo()Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    move-result-object p2

    iget p2, p2, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->zOrder:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 97
    check-cast p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;

    check-cast p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;

    invoke-virtual {p0, p1, p2}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo$SortByZOrder;->compare(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;)I

    move-result p1

    return p1
.end method
