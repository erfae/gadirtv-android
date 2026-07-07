.class public final synthetic Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$RowsFragment$O3KM5CzycaU_RxvJWKfaWN83gHo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$RowsFragment$O3KM5CzycaU_RxvJWKfaWN83gHo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$RowsFragment$O3KM5CzycaU_RxvJWKfaWN83gHo;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$RowsFragment$O3KM5CzycaU_RxvJWKfaWN83gHo;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$RowsFragment$O3KM5CzycaU_RxvJWKfaWN83gHo;->INSTANCE:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$RowsFragment$O3KM5CzycaU_RxvJWKfaWN83gHo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->lambda$createCardRow$3(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)Z

    move-result p1

    return p1
.end method
