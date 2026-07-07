.class public final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs;
.super Ljava/lang/Object;
.source "AccountNotificationFragmentArgs.kt"

# interfaces
.implements Landroidx/navigation/NavArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u00d6\u0003J\t\u0010\u000c\u001a\u00020\rH\u00d6\u0001J\u0006\u0010\u000e\u001a\u00020\u000fJ\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs;",
        "Landroidx/navigation/NavArgs;",
        "showNotifications",
        "",
        "(Z)V",
        "getShowNotifications",
        "()Z",
        "component1",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toBundle",
        "Landroid/os/Bundle;",
        "toString",
        "",
        "Companion",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs$Companion;


# instance fields
.field private final showNotifications:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs;->Companion:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs;->showNotifications:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs;-><init>(Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs;ZILjava/lang/Object;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-boolean p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs;->showNotifications:Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs;->copy(Z)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs;->Companion:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs$Companion;

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs$Companion;->fromBundle(Landroid/os/Bundle;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs;->showNotifications:Z

    return v0
.end method

.method public final copy(Z)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs;
    .locals 1

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs;

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs;-><init>(Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs;

    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs;->showNotifications:Z

    iget-boolean p1, p1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs;->showNotifications:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getShowNotifications()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs;->showNotifications:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs;->showNotifications:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 3

    .line 12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13
    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs;->showNotifications:Z

    const-string v2, "showNotifications"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountNotificationFragmentArgs(showNotifications="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragmentArgs;->showNotifications:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
