.class public final synthetic Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$PageAndListRowFragment$uKhc0xmOqFcgEE_j8pSYUOOMKQI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$PageAndListRowFragment$uKhc0xmOqFcgEE_j8pSYUOOMKQI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$PageAndListRowFragment$uKhc0xmOqFcgEE_j8pSYUOOMKQI;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$PageAndListRowFragment$uKhc0xmOqFcgEE_j8pSYUOOMKQI;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$PageAndListRowFragment$uKhc0xmOqFcgEE_j8pSYUOOMKQI;->INSTANCE:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$PageAndListRowFragment$uKhc0xmOqFcgEE_j8pSYUOOMKQI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;

    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->lambda$createVodRows$4(Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;)I

    move-result p1

    return p1
.end method
