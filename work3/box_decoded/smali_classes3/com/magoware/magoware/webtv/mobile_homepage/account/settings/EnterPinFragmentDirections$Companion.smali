.class public final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$Companion;
.super Ljava/lang/Object;
.source "EnterPinFragmentDirections.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections;
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
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$Companion;",
        "",
        "()V",
        "actionNavAccountPinToNavAccountPinDetail",
        "Landroidx/navigation/NavDirections;",
        "showAdult",
        "",
        "pin",
        "",
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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$Companion;-><init>()V

    return-void
.end method

.method public static synthetic actionNavAccountPinToNavAccountPinDetail$default(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$Companion;ZLjava/lang/String;ILjava/lang/Object;)Landroidx/navigation/NavDirections;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const-string p2, ""

    .line 26
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$Companion;->actionNavAccountPinToNavAccountPinDetail(ZLjava/lang/String;)Landroidx/navigation/NavDirections;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final actionNavAccountPinToNavAccountPinDetail(ZLjava/lang/String;)Landroidx/navigation/NavDirections;
    .locals 1

    const-string v0, "pin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;

    invoke-direct {v0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;-><init>(ZLjava/lang/String;)V

    check-cast v0, Landroidx/navigation/NavDirections;

    return-object v0
.end method
