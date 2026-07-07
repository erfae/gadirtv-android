.class synthetic Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile$3;
.super Ljava/lang/Object;
.source "SearchFragmentMobile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$magoware$magoware$webtv$mobile_homepage$search$SearchType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 220
    invoke-static {}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;->values()[Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile$3;->$SwitchMap$com$magoware$magoware$webtv$mobile_homepage$search$SearchType:[I

    :try_start_0
    sget-object v1, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;->TV_PROGRAM:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile$3;->$SwitchMap$com$magoware$magoware$webtv$mobile_homepage$search$SearchType:[I

    sget-object v1, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;->MOVIE:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile$3;->$SwitchMap$com$magoware$magoware$webtv$mobile_homepage$search$SearchType:[I

    sget-object v1, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;->TV_SHOW:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
