.class public final synthetic Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$FYtlPISZL8lNRw0wTkYsXhl3ARo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$FYtlPISZL8lNRw0wTkYsXhl3ARo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$FYtlPISZL8lNRw0wTkYsXhl3ARo;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$FYtlPISZL8lNRw0wTkYsXhl3ARo;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$FYtlPISZL8lNRw0wTkYsXhl3ARo;->INSTANCE:Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$FYtlPISZL8lNRw0wTkYsXhl3ARo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->lambda$requestByTime$1(Lcom/android/volley/VolleyError;)V

    return-void
.end method
