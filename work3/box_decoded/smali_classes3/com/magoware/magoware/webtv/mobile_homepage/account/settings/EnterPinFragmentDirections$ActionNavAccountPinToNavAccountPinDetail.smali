.class final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;
.super Ljava/lang/Object;
.source "EnterPinFragmentDirections.kt"

# interfaces
.implements Landroidx/navigation/NavDirections;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActionNavAccountPinToNavAccountPinDetail"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u00032\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u00d6\u0003J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\t\u0010\u0015\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;",
        "Landroidx/navigation/NavDirections;",
        "showAdult",
        "",
        "pin",
        "",
        "(ZLjava/lang/String;)V",
        "getPin",
        "()Ljava/lang/String;",
        "getShowAdult",
        "()Z",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "",
        "getActionId",
        "",
        "getArguments",
        "Landroid/os/Bundle;",
        "hashCode",
        "toString",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final pin:Ljava/lang/String;

.field private final showAdult:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;-><init>(ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1

    const-string v0, "pin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;->showAdult:Z

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;->pin:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const-string p2, ""

    .line 13
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;-><init>(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;ZLjava/lang/String;ILjava/lang/Object;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-boolean p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;->showAdult:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;->pin:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;->copy(ZLjava/lang/String;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;->showAdult:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;->pin:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ZLjava/lang/String;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;
    .locals 1

    const-string v0, "pin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;

    invoke-direct {v0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;

    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;->showAdult:Z

    iget-boolean v1, p1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;->showAdult:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;->pin:Ljava/lang/String;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;->pin:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getActionId()I
    .locals 1

    const v0, 0x7f0b0089

    return v0
.end method

.method public getArguments()Landroid/os/Bundle;
    .locals 3

    .line 18
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 19
    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;->showAdult:Z

    const-string v2, "showAdult"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;->pin:Ljava/lang/String;

    const-string v2, "pin"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPin()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;->pin:Ljava/lang/String;

    return-object v0
.end method

.method public final getShowAdult()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;->showAdult:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;->showAdult:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;->pin:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionNavAccountPinToNavAccountPinDetail(showAdult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;->showAdult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentDirections$ActionNavAccountPinToNavAccountPinDetail;->pin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
