.class public Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;
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
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
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
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->mType:I

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->mShadow:Z

    return-void
.end method


# virtual methods
.method public getCards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->mCards:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->mType:I

    return v0
.end method

.method public setCards(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mCards"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->mCards:Ljava/util/List;

    return-void
.end method

.method public setShadow(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mShadow"
        }
    .end annotation

    .line 65
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->mShadow:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mTitle"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mType"
        }
    .end annotation

    .line 61
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->mType:I

    return-void
.end method

.method public useShadow()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->mShadow:Z

    return v0
.end method
