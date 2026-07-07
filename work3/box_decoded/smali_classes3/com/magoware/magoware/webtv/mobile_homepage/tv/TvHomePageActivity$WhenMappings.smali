.class public final synthetic Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;->values()[Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;->SUCCESS:Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;->ERROR:Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->values()[Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->SETTINGS:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->MOVIE:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->PAUSED:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->TRENDING:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->TV_CHANNEL:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->COMING_NEXT:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->NEW_ARRIVAL:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->TV_SHOW:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    return-void
.end method
