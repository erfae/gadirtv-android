.class synthetic Lcom/magoware/magoware/webtv/modifiedpresenters/leanback/MainMenuCardPresenter$1;
.super Ljava/lang/Object;
.source "MainMenuCardPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/modifiedpresenters/leanback/MainMenuCardPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$leanback$supportleanbackshowcase$models$Card$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    invoke-static {}, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->values()[Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/magoware/magoware/webtv/modifiedpresenters/leanback/MainMenuCardPresenter$1;->$SwitchMap$androidx$leanback$supportleanbackshowcase$models$Card$Type:[I

    :try_start_0
    sget-object v1, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->MENU:Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    invoke-virtual {v1}, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
