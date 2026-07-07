.class public Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;
.super Ljava/lang/Object;
.source "JSWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;
    }
.end annotation


# instance fields
.field public color:Ljava/lang/String;

.field public edgeColor:Ljava/lang/String;

.field public edgeOpacity:D

.field public edgeStyle:Ljava/lang/String;

.field public horizontalAlignment:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

.field public jsRect:Lcom/visualon/OSMPSubTitle/DataObject/JSRect;

.field public opacity:D

.field public verticalAlignment:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private mappingHAligmentType(Ljava/lang/String;)Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;
    .locals 0

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->valueOf(Ljava/lang/String;)Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    move-result-object p1

    return-object p1
.end method

.method private mappingVAligmentType(Ljava/lang/String;)Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;
    .locals 0

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;->valueOf(Ljava/lang/String;)Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public setAlignment(Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;Ljava/lang/String;)V
    .locals 1

    .line 45
    sget-object v0, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;->HORIZONTAL:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;

    if-ne p1, v0, :cond_0

    .line 46
    invoke-direct {p0, p2}, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->mappingHAligmentType(Ljava/lang/String;)Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->horizontalAlignment:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    goto :goto_0

    .line 47
    :cond_0
    sget-object v0, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;->VERTICAL:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;

    if-ne p1, v0, :cond_1

    .line 48
    invoke-direct {p0, p2}, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->mappingVAligmentType(Ljava/lang/String;)Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->verticalAlignment:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

    :cond_1
    :goto_0
    return-void
.end method
