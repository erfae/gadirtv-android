.class synthetic Lcom/magoware/magoware/webtv/network/mvvm/models/Card$2;
.super Ljava/lang/Object;
.source "Card.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/network/mvvm/models/Card;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Card$VodType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 610
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->values()[Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$2;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Card$VodType:[I

    :try_start_0
    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->FILM:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$2;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Card$VodType:[I

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->TV_SEASON:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$2;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Card$VodType:[I

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->TV_SERIES:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$2;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Card$VodType:[I

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->TV_EPISODE:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$2;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Card$VodType:[I

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->ASSETS:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
