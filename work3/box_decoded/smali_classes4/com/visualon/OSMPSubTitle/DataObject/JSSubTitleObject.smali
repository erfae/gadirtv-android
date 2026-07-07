.class public Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject;
.super Ljava/lang/Object;
.source "JSSubTitleObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;,
        Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;
    }
.end annotation


# instance fields
.field public jsBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/visualon/OSMPSubTitle/DataObject/JSBlock;",
            ">;"
        }
    .end annotation
.end field

.field public mainJsRect:Lcom/visualon/OSMPSubTitle/DataObject/JSRect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject;->jsBlocks:Ljava/util/List;

    return-void
.end method
