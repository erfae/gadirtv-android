.class synthetic Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$1;
.super Ljava/lang/Object;
.source "VodDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$magoware$magoware$webtv$vod$mobile$activities$VodDetailsActivity$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 669
    invoke-static {}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;->values()[Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$1;->$SwitchMap$com$magoware$magoware$webtv$vod$mobile$activities$VodDetailsActivity$State:[I

    :try_start_0
    sget-object v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;->Play:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$1;->$SwitchMap$com$magoware$magoware$webtv$vod$mobile$activities$VodDetailsActivity$State:[I

    sget-object v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;->Buy:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$1;->$SwitchMap$com$magoware$magoware$webtv$vod$mobile$activities$VodDetailsActivity$State:[I

    sget-object v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;->ComingSoon:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
