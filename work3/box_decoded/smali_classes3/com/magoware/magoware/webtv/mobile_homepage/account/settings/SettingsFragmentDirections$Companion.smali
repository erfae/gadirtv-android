.class public final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections$Companion;
.super Ljava/lang/Object;
.source "SettingsFragmentDirections.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections;
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
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0010\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\u0008\u001a\u00020\u0004J\u001a\u0010\t\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0007J\u0006\u0010\r\u001a\u00020\u0004J\u0006\u0010\u000e\u001a\u00020\u0004J\u0006\u0010\u000f\u001a\u00020\u0004\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections$Companion;",
        "",
        "()V",
        "actionNavSettingsToNavAccountInfo",
        "Landroidx/navigation/NavDirections;",
        "actionNavSettingsToNavAccountNotification",
        "showNotifications",
        "",
        "actionNavSettingsToNavAccountPassword",
        "actionNavSettingsToNavAccountPin",
        "pin",
        "",
        "showAdult",
        "actionNavSettingsToNavAccountPlayer",
        "actionNavSettingsToNavAccountPurchases",
        "actionNavSettingsToNavAccountSubscriptions",
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

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections$Companion;-><init>()V

    return-void
.end method

.method public static synthetic actionNavSettingsToNavAccountNotification$default(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections$Companion;ZILjava/lang/Object;)Landroidx/navigation/NavDirections;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 51
    :cond_0
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections$Companion;->actionNavSettingsToNavAccountNotification(Z)Landroidx/navigation/NavDirections;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic actionNavSettingsToNavAccountPin$default(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections$Companion;Ljava/lang/String;ZILjava/lang/Object;)Landroidx/navigation/NavDirections;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 54
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections$Companion;->actionNavSettingsToNavAccountPin(Ljava/lang/String;Z)Landroidx/navigation/NavDirections;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final actionNavSettingsToNavAccountInfo()Landroidx/navigation/NavDirections;
    .locals 2

    .line 40
    new-instance v0, Landroidx/navigation/ActionOnlyNavDirections;

    const v1, 0x7f0b008e

    invoke-direct {v0, v1}, Landroidx/navigation/ActionOnlyNavDirections;-><init>(I)V

    check-cast v0, Landroidx/navigation/NavDirections;

    return-object v0
.end method

.method public final actionNavSettingsToNavAccountNotification(Z)Landroidx/navigation/NavDirections;
    .locals 1

    .line 52
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections$ActionNavSettingsToNavAccountNotification;

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections$ActionNavSettingsToNavAccountNotification;-><init>(Z)V

    check-cast v0, Landroidx/navigation/NavDirections;

    return-object v0
.end method

.method public final actionNavSettingsToNavAccountPassword()Landroidx/navigation/NavDirections;
    .locals 2

    .line 49
    new-instance v0, Landroidx/navigation/ActionOnlyNavDirections;

    const v1, 0x7f0b0090

    invoke-direct {v0, v1}, Landroidx/navigation/ActionOnlyNavDirections;-><init>(I)V

    check-cast v0, Landroidx/navigation/NavDirections;

    return-object v0
.end method

.method public final actionNavSettingsToNavAccountPin(Ljava/lang/String;Z)Landroidx/navigation/NavDirections;
    .locals 1

    const-string v0, "pin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections$ActionNavSettingsToNavAccountPin;

    invoke-direct {v0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections$ActionNavSettingsToNavAccountPin;-><init>(Ljava/lang/String;Z)V

    check-cast v0, Landroidx/navigation/NavDirections;

    return-object v0
.end method

.method public final actionNavSettingsToNavAccountPlayer()Landroidx/navigation/NavDirections;
    .locals 2

    .line 58
    new-instance v0, Landroidx/navigation/ActionOnlyNavDirections;

    const v1, 0x7f0b0092

    invoke-direct {v0, v1}, Landroidx/navigation/ActionOnlyNavDirections;-><init>(I)V

    check-cast v0, Landroidx/navigation/NavDirections;

    return-object v0
.end method

.method public final actionNavSettingsToNavAccountPurchases()Landroidx/navigation/NavDirections;
    .locals 2

    .line 43
    new-instance v0, Landroidx/navigation/ActionOnlyNavDirections;

    const v1, 0x7f0b0093

    invoke-direct {v0, v1}, Landroidx/navigation/ActionOnlyNavDirections;-><init>(I)V

    check-cast v0, Landroidx/navigation/NavDirections;

    return-object v0
.end method

.method public final actionNavSettingsToNavAccountSubscriptions()Landroidx/navigation/NavDirections;
    .locals 2

    .line 46
    new-instance v0, Landroidx/navigation/ActionOnlyNavDirections;

    const v1, 0x7f0b0094

    invoke-direct {v0, v1}, Landroidx/navigation/ActionOnlyNavDirections;-><init>(I)V

    check-cast v0, Landroidx/navigation/NavDirections;

    return-object v0
.end method
