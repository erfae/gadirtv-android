.class public final synthetic Lcom/magoware/magoware/webtv/homepage/smarttv/-$$Lambda$SmartTvMainFragment$QBPV66JmWHOAFKev4qvPMy0m3EU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/magoware/magoware/webtv/homepage/smarttv/-$$Lambda$SmartTvMainFragment$QBPV66JmWHOAFKev4qvPMy0m3EU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/magoware/magoware/webtv/homepage/smarttv/-$$Lambda$SmartTvMainFragment$QBPV66JmWHOAFKev4qvPMy0m3EU;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/homepage/smarttv/-$$Lambda$SmartTvMainFragment$QBPV66JmWHOAFKev4qvPMy0m3EU;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/homepage/smarttv/-$$Lambda$SmartTvMainFragment$QBPV66JmWHOAFKev4qvPMy0m3EU;->INSTANCE:Lcom/magoware/magoware/webtv/homepage/smarttv/-$$Lambda$SmartTvMainFragment$QBPV66JmWHOAFKev4qvPMy0m3EU;

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

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/homepage/smarttv/SmartTvMainFragment;->lambda$setupVodCategories$11(Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;)I

    move-result p1

    return p1
.end method
