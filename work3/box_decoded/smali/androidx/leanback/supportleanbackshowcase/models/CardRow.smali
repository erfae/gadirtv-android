.class public Landroidx/leanback/supportleanbackshowcase/models/CardRow;
.super Ljava/lang/Object;
.source "CardRow.java"


# static fields
.field public static final TYPE_DEFAULT:I = 0x0

.field public static final TYPE_DIVIDER:I = 0x2

.field public static final TYPE_SECTION_HEADER:I = 0x1


# instance fields
.field private mCards:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cards"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/leanback/supportleanbackshowcase/models/Card;",
            ">;"
        }
    .end annotation
.end field

.field private mShadow:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shadow"
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private mType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->mType:I

    const/4 v1, 0x1

    .line 38
    iput-boolean v1, p0, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->mShadow:Z

    const-string v2, ""

    .line 44
    iput-object v2, p0, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->mTitle:Ljava/lang/String;

    .line 45
    iput-boolean v1, p0, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->mShadow:Z

    .line 46
    iput v0, p0, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->mType:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->mCards:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCards()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/leanback/supportleanbackshowcase/models/Card;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 79
    :goto_0
    iget-object v2, p0, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->mCards:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 80
    iget-object v2, p0, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->mCards:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@cards22 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->mCards:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 51
    iget v0, p0, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->mType:I

    return v0
.end method

.method public setCard(Landroidx/leanback/supportleanbackshowcase/models/Card;)V
    .locals 1

    .line 71
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->mCards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setShadow(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->mShadow:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 74
    iput p1, p0, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->mType:I

    return-void
.end method

.method public useShadow()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->mShadow:Z

    return v0
.end method
