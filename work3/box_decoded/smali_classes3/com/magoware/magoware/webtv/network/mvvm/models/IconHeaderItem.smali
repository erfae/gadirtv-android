.class public Lcom/magoware/magoware/webtv/network/mvvm/models/IconHeaderItem;
.super Landroidx/leanback/widget/HeaderItem;
.source "IconHeaderItem.java"


# static fields
.field public static final ICON_NONE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "IconHeaderItem"


# instance fields
.field private iconUrl:Ljava/lang/String;

.field private pinProtected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "name"
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/IconHeaderItem;->ICON_NONE:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/IconHeaderItem;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "name",
            "iconResId"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 14
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/IconHeaderItem;->ICON_NONE:Ljava/lang/String;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/IconHeaderItem;->iconUrl:Ljava/lang/String;

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/IconHeaderItem;->pinProtected:Z

    .line 19
    iput-object p4, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/IconHeaderItem;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "name",
            "mIconResId",
            "pinProtected"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/magoware/magoware/webtv/network/mvvm/models/IconHeaderItem;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-boolean p5, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/IconHeaderItem;->pinProtected:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    .line 14
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/IconHeaderItem;->ICON_NONE:Ljava/lang/String;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/IconHeaderItem;->iconUrl:Ljava/lang/String;

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/IconHeaderItem;->pinProtected:Z

    return-void
.end method


# virtual methods
.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/IconHeaderItem;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isPinProtected()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/IconHeaderItem;->pinProtected:Z

    return v0
.end method

.method public setIconResId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconResId"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/IconHeaderItem;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public setPinProtected(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pinProtected"
        }
    .end annotation

    .line 49
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/IconHeaderItem;->pinProtected:Z

    return-void
.end method
