.class final Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragmentDirections$ActionNavNewsToNewsDetailFragment;
.super Ljava/lang/Object;
.source "NewsFragmentDirections.kt"

# interfaces
.implements Landroidx/navigation/NavDirections;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragmentDirections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActionNavNewsToNewsDetailFragment"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\t\u0010\u0011\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragmentDirections$ActionNavNewsToNewsDetailFragment;",
        "Landroidx/navigation/NavDirections;",
        "id",
        "",
        "(J)V",
        "getId",
        "()J",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "getActionId",
        "",
        "getArguments",
        "Landroid/os/Bundle;",
        "hashCode",
        "toString",
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


# instance fields
.field private final id:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragmentDirections$ActionNavNewsToNewsDetailFragment;->id:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragmentDirections$ActionNavNewsToNewsDetailFragment;JILjava/lang/Object;)Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragmentDirections$ActionNavNewsToNewsDetailFragment;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    iget-wide p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragmentDirections$ActionNavNewsToNewsDetailFragment;->id:J

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragmentDirections$ActionNavNewsToNewsDetailFragment;->copy(J)Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragmentDirections$ActionNavNewsToNewsDetailFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragmentDirections$ActionNavNewsToNewsDetailFragment;->id:J

    return-wide v0
.end method

.method public final copy(J)Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragmentDirections$ActionNavNewsToNewsDetailFragment;
    .locals 1

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragmentDirections$ActionNavNewsToNewsDetailFragment;

    invoke-direct {v0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragmentDirections$ActionNavNewsToNewsDetailFragment;-><init>(J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragmentDirections$ActionNavNewsToNewsDetailFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragmentDirections$ActionNavNewsToNewsDetailFragment;

    iget-wide v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragmentDirections$ActionNavNewsToNewsDetailFragment;->id:J

    iget-wide v2, p1, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragmentDirections$ActionNavNewsToNewsDetailFragment;->id:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

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

    const v0, 0x7f0b008d

    return v0
.end method

.method public getArguments()Landroid/os/Bundle;
    .locals 4

    .line 16
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 17
    iget-wide v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragmentDirections$ActionNavNewsToNewsDetailFragment;->id:J

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragmentDirections$ActionNavNewsToNewsDetailFragment;->id:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragmentDirections$ActionNavNewsToNewsDetailFragment;->id:J

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/api/ResponseObject-$$ExternalSynthetic0;->m0(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionNavNewsToNewsDetailFragment(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragmentDirections$ActionNavNewsToNewsDetailFragment;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
