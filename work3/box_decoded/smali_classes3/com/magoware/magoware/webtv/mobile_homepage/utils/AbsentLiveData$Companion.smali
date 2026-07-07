.class public final Lcom/magoware/magoware/webtv/mobile_homepage/utils/AbsentLiveData$Companion;
.super Ljava/lang/Object;
.source "AbsentLiveData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/utils/AbsentLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/utils/AbsentLiveData$Companion;",
        "",
        "()V",
        "create",
        "Landroidx/lifecycle/LiveData;",
        "T",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/utils/AbsentLiveData$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/utils/AbsentLiveData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/utils/AbsentLiveData;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method
