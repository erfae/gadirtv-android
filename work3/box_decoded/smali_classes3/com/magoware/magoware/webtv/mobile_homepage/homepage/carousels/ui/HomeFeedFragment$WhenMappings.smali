.class public final synthetic Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$WhenMappings;
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

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I

.field public static final synthetic $EnumSwitchMapping$4:[I

.field public static final synthetic $EnumSwitchMapping$5:[I

.field public static final synthetic $EnumSwitchMapping$6:[I

.field public static final synthetic $EnumSwitchMapping$7:[I

.field public static final synthetic $EnumSwitchMapping$8:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;->values()[Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$WhenMappings;->$EnumSwitchMapping$0:[I

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

    invoke-static {}, Lcom/magoware/magoware/webtv/data/Status;->values()[Lcom/magoware/magoware/webtv/data/Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/magoware/magoware/webtv/data/Status;->SUCCESS:Lcom/magoware/magoware/webtv/data/Status;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/data/Status;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/magoware/magoware/webtv/data/Status;->ERROR:Lcom/magoware/magoware/webtv/data/Status;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/data/Status;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-static {}, Lcom/magoware/magoware/webtv/data/Status;->values()[Lcom/magoware/magoware/webtv/data/Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/magoware/magoware/webtv/data/Status;->SUCCESS:Lcom/magoware/magoware/webtv/data/Status;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/data/Status;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/magoware/magoware/webtv/data/Status;->ERROR:Lcom/magoware/magoware/webtv/data/Status;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/data/Status;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-static {}, Lcom/magoware/magoware/webtv/data/Status;->values()[Lcom/magoware/magoware/webtv/data/Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/magoware/magoware/webtv/data/Status;->SUCCESS:Lcom/magoware/magoware/webtv/data/Status;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/data/Status;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/magoware/magoware/webtv/data/Status;->ERROR:Lcom/magoware/magoware/webtv/data/Status;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/data/Status;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-static {}, Lcom/magoware/magoware/webtv/data/Status;->values()[Lcom/magoware/magoware/webtv/data/Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lcom/magoware/magoware/webtv/data/Status;->SUCCESS:Lcom/magoware/magoware/webtv/data/Status;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/data/Status;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/magoware/magoware/webtv/data/Status;->ERROR:Lcom/magoware/magoware/webtv/data/Status;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/data/Status;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-static {}, Lcom/magoware/magoware/webtv/data/Status;->values()[Lcom/magoware/magoware/webtv/data/Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$WhenMappings;->$EnumSwitchMapping$5:[I

    sget-object v1, Lcom/magoware/magoware/webtv/data/Status;->SUCCESS:Lcom/magoware/magoware/webtv/data/Status;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/data/Status;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/magoware/magoware/webtv/data/Status;->ERROR:Lcom/magoware/magoware/webtv/data/Status;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/data/Status;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-static {}, Lcom/magoware/magoware/webtv/data/Status;->values()[Lcom/magoware/magoware/webtv/data/Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$WhenMappings;->$EnumSwitchMapping$6:[I

    sget-object v1, Lcom/magoware/magoware/webtv/data/Status;->SUCCESS:Lcom/magoware/magoware/webtv/data/Status;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/data/Status;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/magoware/magoware/webtv/data/Status;->ERROR:Lcom/magoware/magoware/webtv/data/Status;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/data/Status;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-static {}, Lcom/magoware/magoware/webtv/data/Status;->values()[Lcom/magoware/magoware/webtv/data/Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$WhenMappings;->$EnumSwitchMapping$7:[I

    sget-object v1, Lcom/magoware/magoware/webtv/data/Status;->SUCCESS:Lcom/magoware/magoware/webtv/data/Status;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/data/Status;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/magoware/magoware/webtv/data/Status;->ERROR:Lcom/magoware/magoware/webtv/data/Status;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/data/Status;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-static {}, Lcom/magoware/magoware/webtv/data/Status;->values()[Lcom/magoware/magoware/webtv/data/Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$WhenMappings;->$EnumSwitchMapping$8:[I

    sget-object v1, Lcom/magoware/magoware/webtv/data/Status;->SUCCESS:Lcom/magoware/magoware/webtv/data/Status;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/data/Status;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/magoware/magoware/webtv/data/Status;->ERROR:Lcom/magoware/magoware/webtv/data/Status;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/data/Status;->ordinal()I

    move-result v1

    aput v3, v0, v1

    return-void
.end method
